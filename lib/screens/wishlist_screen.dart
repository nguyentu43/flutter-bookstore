import 'package:cool_alert/cool_alert.dart';
import 'package:ferry/typed_links.dart';
import 'package:ferry_flutter/ferry_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bookstore/graphql/mutations/removeWishlist.req.gql.dart';
import 'package:flutter_bookstore/graphql/queries/getWishlist.data.gql.dart';
import 'package:flutter_bookstore/graphql/queries/getWishlist.req.gql.dart';
import 'package:flutter_bookstore/graphql/queries/getWishlist.var.gql.dart';
import 'package:flutter_bookstore/helpers/app_service.dart';
import 'package:flutter_bookstore/widgets/components/book_item.dart';
import 'package:flutter_bookstore/widgets/components/top_bar.dart';

class WishlistScreen extends StatefulWidget {
  const WishlistScreen({Key? key}) : super(key: key);

  @override
  State<WishlistScreen> createState() => _WishlistScreenState();
}

class _WishlistScreenState extends State<WishlistScreen> {
  var _updateKey = UniqueKey();

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Scaffold(
        body: SafeArea(
      key: _updateKey,
      child: ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        children: [
          const Padding(
            padding: EdgeInsets.only(bottom: 10.0),
            child: TopBar(
              headerText: "Wishlist",
            ),
          ),
          Operation(
              operationRequest: GGetWishlistReq(
                  (b) => b.fetchPolicy = FetchPolicy.NetworkOnly),
              builder: (context,
                  OperationResponse<GGetWishlistData, GGetWishlistVars>?
                      response,
                  error) {
                if (response!.loading) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }

                final products = response.data!.products;
                return ListView.separated(
                    shrinkWrap: true,
                    separatorBuilder: (context, index) => const Divider(),
                    itemCount: products!.length + 1,
                    itemBuilder: (context, index) {
                      if (index == 0) {
                        return const Center(
                            child: Padding(
                          padding: EdgeInsets.only(top: 8.0),
                          child: Text("Swipe to delete"),
                        ));
                      }

                      final product = products[index - 1];
                      return Dismissible(
                        onDismissed: (direction) {
                          AppService()
                              .client
                              .request(GRemoveWishlistReq(
                                  (b) => b.vars.id = product.id))
                              .listen((response) {
                            if (!response.loading && !response.hasErrors) {
                              setState(() {
                                _updateKey = UniqueKey();
                                CoolAlert.show(
                                    context: context,
                                    type: CoolAlertType.info,
                                    text: "Item has been removed");
                              });
                            }
                          });
                        },
                        key: Key(product.id),
                        child: SizedBox(
                          height: 150,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              children: [
                                BookItem(
                                  id: product.id,
                                  discount: product.discount ?? 0.0,
                                  image: product.images!.first.secure_url,
                                  slug: product.slug,
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(product.name,
                                          style: textTheme.headline6),
                                      Text("\$ ${product.price}")
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    });
              },
              client: AppService().client),
        ],
      ),
    ));
  }
}
