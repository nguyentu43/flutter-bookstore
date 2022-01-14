import 'package:cool_alert/cool_alert.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:ferry/ferry.dart';
import 'package:ferry_flutter/ferry_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bookstore/graphql/client.dart';
import 'package:flutter_bookstore/graphql/queries/getCategories.data.gql.dart';
import 'package:flutter_bookstore/graphql/queries/getCategories.req.gql.dart';
import 'package:flutter_bookstore/graphql/queries/getCategories.var.gql.dart';
import 'package:flutter_bookstore/graphql/queries/getProducts.data.gql.dart';
import 'package:flutter_bookstore/graphql/queries/getProducts.req.gql.dart';
import 'package:flutter_bookstore/graphql/queries/getProducts.var.gql.dart';
import 'package:flutter_bookstore/widgets/components/book_item.dart';
import 'package:flutter_bookstore/widgets/components/move_to_single_book_screen.dart';
import 'package:flutter_bookstore/widgets/components/rounded_button.dart';
import 'package:built_collection/built_collection.dart';

class SearchTab extends StatefulWidget {
  const SearchTab({Key? key}) : super(key: key);

  @override
  State<SearchTab> createState() => _SearchTabState();
}

class _SearchTabState extends State<SearchTab> {
  TextEditingController _searchEditController = TextEditingController();

  GGetCategoriesData_categories? currentCategory;
  String keyword = "";

  @override
  void dispose() {
    super.dispose();
    _searchEditController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return ListView(
      physics: BouncingScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text("SEARCH", style: textTheme.headline2)],
          ),
        ),
        Container(
          height: 50,
          margin: EdgeInsets.symmetric(horizontal: 10.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: TextField(
                  controller: _searchEditController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      label:
                          Text("Type something", style: textTheme.subtitle1)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: RoundedButton(
                  child: Icon(
                    Icons.filter_alt,
                    color: Colors.white,
                  ),
                  backgroundColor: Colors.blue,
                  onPressed: () {
                    showDialog(
                        context: context,
                        barrierDismissible: true,
                        builder: (context) {
                          return AlertDialog(
                              contentPadding: EdgeInsets.all(10.0),
                              titlePadding: EdgeInsets.all(10.0),
                              title: Text("Filter"),
                              titleTextStyle: textTheme.button?.merge(
                                  TextStyle(fontWeight: FontWeight.bold)),
                              actions: [
                                RoundedButton(
                                  backgroundColor: Colors.green,
                                  child: Text("OK",
                                      style: textTheme.button?.merge(
                                          TextStyle(color: Colors.white))),
                                  onPressed: () => Navigator.of(context).pop(),
                                ),
                                RoundedButton(
                                  child: Text("Close",
                                      style: textTheme.button?.merge(
                                          TextStyle(color: Colors.white))),
                                  onPressed: () => Navigator.of(context).pop(),
                                )
                              ],
                              content: Container(
                                height: 200,
                                width: double.infinity,
                                child: Column(
                                  children: [
                                    Operation(
                                        operationRequest: GGetCategoriesReq(),
                                        builder: (context,
                                            OperationResponse<
                                                    GGetCategoriesData,
                                                    GGetCategoriesVars>?
                                                response,
                                            error) {
                                          if (response!.loading)
                                            return CircularProgressIndicator();
                                          return DropdownSearch<
                                              GGetCategoriesData_categories>(
                                            itemAsString: (u) => u!.name,
                                            label: "Choose a category",
                                            items: response.data!.categories
                                                .toList(),
                                            onChanged: (data) => setState(() {
                                              currentCategory = data;
                                            }),
                                          );
                                        },
                                        client: client)
                                  ],
                                ),
                              ));
                        });
                  },
                ),
              ),
              RoundedButton(
                child: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                onPressed: () {
                  setState(() {
                    keyword = _searchEditController.text;
                  });
                },
                backgroundColor: Colors.green,
              )
            ],
          ),
        ),
        Padding(
            padding: const EdgeInsets.all(10.0),
            child: Operation(
              client: client,
              operationRequest: GGetProductsReq(
                  (b) => b.vars.search = "keyword=${keyword}&limit=16"),
              builder: (context,
                  OperationResponse<GGetProductsData, GGetProductsVars>?
                      response,
                  error) {
                if (response!.loading) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
                final products = response.data!.products;
                return GridView.builder(
                    itemCount: products.length,
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 10.0,
                      crossAxisCount: 4,
                      childAspectRatio: 0.7,
                    ),
                    itemBuilder: (context, index) {
                      final product = products[index];
                      return MoveToSingleBookScreen(
                        slug: product.slug,
                        child: BookItem(
                          image: product.images![0].secure_url,
                          discount: product.discount!,
                          id: product.id,
                          slug: product.slug,
                        ),
                      );
                    });
              },
            ))
      ],
    );
  }
}
