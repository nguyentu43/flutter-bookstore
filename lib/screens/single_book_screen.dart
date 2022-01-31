import 'dart:math';

import 'package:cool_alert/cool_alert.dart';
import 'package:ferry/ferry.dart';
import 'package:ferry_flutter/ferry_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bookstore/graphql/client.dart';
import 'package:flutter_bookstore/graphql/mutations/addCartItem.req.gql.dart';
import 'package:flutter_bookstore/graphql/mutations/addWishlist.req.gql.dart';
import 'package:flutter_bookstore/graphql/mutations/removeRating.req.gql.dart';
import 'package:flutter_bookstore/graphql/queries/getCategories.data.gql.dart';
import 'package:flutter_bookstore/graphql/queries/getProduct.data.gql.dart';
import 'package:flutter_bookstore/graphql/queries/getProduct.req.gql.dart';
import 'package:flutter_bookstore/graphql/queries/getProduct.var.gql.dart';
import 'package:flutter_bookstore/graphql/queries/getUserInfo.data.gql.dart';
import 'package:flutter_bookstore/helpers/app_service.dart';
import 'package:flutter_bookstore/models/bloc/auth_bloc.dart';
import 'package:flutter_bookstore/models/bloc/cart_bloc.dart';
import 'package:flutter_bookstore/screens/edit_rating_Screen.dart';
import 'package:flutter_bookstore/widgets/components/error_box.dart';
import 'package:flutter_bookstore/widgets/components/move_to_category.dart';
import 'package:flutter_bookstore/widgets/components/rounded_button.dart';
import 'package:flutter_bookstore/widgets/components/top_bar.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_spinbox/flutter_spinbox.dart';

class SingleBookScreen extends StatefulWidget {
  SingleBookScreen({Key? key, required this.slug}) : super(key: key);

  final String slug;

  @override
  State<SingleBookScreen> createState() => _SingleBookScreenState();
}

class _SingleBookScreenState extends State<SingleBookScreen> {
  int _currentIndex = 0;
  int _quantity = 1;
  String _requestId = "single_${Random().nextInt(255)}";

  final _tabs = [
    Tab(
      text: "Information",
    ),
    Tab(text: "Review")
  ];

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return SafeArea(
      child: Scaffold(
        body: DefaultTabController(
          length: _tabs.length,
          child: Operation(
            builder: (context,
                OperationResponse<GGetProductData, GGetProductVars>? response,
                error) {
              if (response!.loading)
                return Center(child: CircularProgressIndicator());

              if (response.hasErrors) {
                return Center(
                    child:
                        ErrorBox(text: response.graphqlErrors!.first.message));
              }

              final product = response.data!.product;
              bool hasRating = false;
              final auth = BlocProvider.of<AuthBloc>(context).state;
              for (var rating in product!.ratings!) {
                if (auth != null && rating.user.id == auth.id) {
                  hasRating = true;
                  break;
                }
              }

              return ListView(
                physics: BouncingScrollPhysics(),
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: TopBar(),
                  ),
                  Container(
                    height: 280,
                    margin: EdgeInsets.symmetric(vertical: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Stack(
                            children: [
                              Image.network(product.images!.first.secure_url),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin:
                        EdgeInsets.only(bottom: 10.0, left: 10.0, right: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(product.name,
                            style: textTheme.headline2?.merge(
                                TextStyle(fontWeight: FontWeight.bold))),
                        Text(product.authors!.map((i) => i.name).join(", "),
                            style: textTheme.subtitle1),
                        Text("\$ ${product.price.toStringAsFixed(1)}",
                            style: textTheme.headline4?.merge(TextStyle(
                                decoration: product.discount! > 0.0
                                    ? TextDecoration.lineThrough
                                    : TextDecoration.none))),
                        if (product.discount! > 0.0)
                          Row(
                            children: [
                              Text(
                                  "\$ ${(product.price * (1.0 - product.discount!)).toStringAsFixed(2)}",
                                  style: textTheme.headline4),
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Chip(
                                  label: Text(
                                      "${(product.discount! * 100.0).toStringAsFixed(2)}%",
                                      style: textTheme.caption?.merge(
                                          TextStyle(color: Colors.white))),
                                  backgroundColor: Colors.orange,
                                ),
                              )
                            ],
                          )
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.grey[300]),
                    margin: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 10.0),
                                  child: Text("Category",
                                      style: textTheme.headline5),
                                ),
                                MoveToCategory(
                                    category:
                                        GGetCategoriesData_categories.fromJson(
                                            product.category!.toJson()),
                                    child: Text(product.category!.name))
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 10.0),
                                  child: Text(
                                      "Review  ${product.ratings!.isNotEmpty ? '(' + product.ratings!.length.toString() + ')' : ''}",
                                      style: textTheme.headline5),
                                ),
                                product.ratings!.isEmpty
                                    ? Text("No review")
                                    : Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text((product.ratings!.fold<double>(
                                                      0.0,
                                                      (r, item) =>
                                                          r + item.rate) /
                                                  product.ratings!.length)
                                              .toStringAsFixed(1)),
                                          Icon(
                                            Icons.star_rate,
                                            color: Colors.yellow,
                                          )
                                        ],
                                      ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                            width: 100,
                            child: SpinBox(
                              min: 1,
                              value: 1,
                              onChanged: (value) {
                                _quantity = value.toInt();
                              },
                            )),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: RoundedButton(
                            child: Icon(Icons.add_shopping_cart,
                                color: Colors.white),
                            onPressed: () {
                              if (BlocProvider.of<AuthBloc>(context).state ==
                                  null) {
                                CoolAlert.show(
                                    context: context,
                                    type: CoolAlertType.info,
                                    text: "Login to add cart");
                                return;
                              }

                              _addToCart(context, product);
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: RoundedButton(
                            backgroundColor: Colors.pink,
                            child: Icon(Icons.favorite, color: Colors.white),
                            onPressed: () {
                              _addWishlist(product, context);
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: TabBar(
                      tabs: _tabs,
                      labelColor: Colors.black,
                      labelStyle: textTheme.headline6,
                      onTap: (index) {
                        setState(() {
                          _currentIndex = index;
                        });
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: IndexedStack(
                      index: _currentIndex,
                      children: [
                        Html(
                          data: product.description!,
                        ),
                        Column(
                          children: [
                            ListView.separated(
                                shrinkWrap: true,
                                itemBuilder: (context, index) {
                                  if (index == 0) {
                                    if (hasRating) return Container();
                                    return RoundedButton(
                                        onPressed: () {
                                          _addRating(context, product.id);
                                        },
                                        child: Text("Add rating",
                                            style: textTheme.button));
                                  }

                                  final rating = product.ratings![index - 1];
                                  final isOwner =
                                      auth != null && auth.id == rating.user.id;

                                  return Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10.0),
                                        child: Column(
                                          children: [
                                            CircleAvatar(
                                              child: Icon(Icons.person),
                                            ),
                                            Text(rating.user.name),
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            SizedBox(
                                              width: double.infinity,
                                              child: Text(rating.title,
                                                  style: textTheme.headline6
                                                      ?.merge(TextStyle(
                                                          fontWeight: FontWeight
                                                              .bold))),
                                            ),
                                            Row(
                                              children: [
                                                Text(rating.rate.toString()),
                                                Icon(
                                                  Icons.star_rate,
                                                  color: Colors.yellow,
                                                )
                                              ],
                                            ),
                                            SizedBox(
                                                width: double.infinity,
                                                child: Text(rating.comment))
                                          ],
                                        ),
                                      ),
                                      if (isOwner)
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 10.0),
                                          child: Column(
                                            children: [
                                              RoundedButton(
                                                  onPressed: () {
                                                    Navigator.of(context).push(
                                                        MaterialPageRoute(
                                                            builder: (_) =>
                                                                EditRatingScreen(
                                                                    rating:
                                                                        rating,
                                                                    productID:
                                                                        product
                                                                            .id,
                                                                    userID:
                                                                        auth.id,
                                                                    onSubmit:
                                                                        () {
                                                                      _rebuild();
                                                                    })));
                                                  },
                                                  backgroundColor: Colors.green,
                                                  child: Icon(Icons.edit,
                                                      color: Colors.white)),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 5.0),
                                                child: RoundedButton(
                                                    onPressed: () {
                                                      CoolAlert.show(
                                                          context: context,
                                                          type: CoolAlertType
                                                              .confirm,
                                                          text:
                                                              'Do you want to delete?',
                                                          onConfirmBtnTap: () {
                                                            _deleteRating(
                                                                rating.id);
                                                            Navigator.of(
                                                                    context)
                                                                .pop();
                                                          });
                                                    },
                                                    backgroundColor: Colors.red,
                                                    child: Icon(Icons.delete,
                                                        color: Colors.white)),
                                              )
                                            ],
                                          ),
                                        ),
                                    ],
                                  );
                                },
                                separatorBuilder: (context, index) => Divider(),
                                itemCount: product.ratings!.length + 1),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              );
            },
            client: AppService().client,
            operationRequest: GGetProductReq((b) => b
              ..vars.slug = widget.slug
              ..requestId = _requestId),
          ),
        ),
      ),
    );
  }

  void _addToCart(BuildContext context, GGetProductData_product product) {
    final cart = BlocProvider.of<CartBloc>(context).state;

    int quantity = _quantity;
    for (var item in cart) {
      if (item!.id == product.id) {
        quantity += item.quantity;
      }
    }

    AppService()
        .client
        .request(GAddCartItemReq((b) => b
          ..vars.input.id = product.id
          ..vars.input.quantity = quantity))
        .listen((response) {
      if (!response.loading) {
        if (!response.hasErrors) {
          final cart = response.data!.cart!
              .map((item) => GGetUserInfoData_cart.fromJson(item.toJson()))
              .toList();
          BlocProvider.of<CartBloc>(context).add(UpdateCartEvent(cart: cart));
          CoolAlert.show(
              context: context,
              type: CoolAlertType.success,
              text: "${product.name} to cart");
        }
      }
    });
  }

  void _addWishlist(GGetProductData_product product, BuildContext context) {
    AppService()
        .client
        .request(GAddWishlistReq((b) => b..vars.id = product.id))
        .listen((response) {
      if (!response.loading) {
        if (!response.hasErrors) {
          CoolAlert.show(
              context: context,
              type: CoolAlertType.info,
              text: "${product.name} add to wishlist");
        }
      }
    });
  }

  void _rebuild() {
    setState(() {
      _requestId = "single_${Random().nextInt(255)}";
    });
  }

  void _addRating(BuildContext context, productID) {
    final authBloc = BlocProvider.of<AuthBloc>(context);
    if (authBloc.state == null) {
      CoolAlert.show(
          context: context,
          type: CoolAlertType.info,
          text: "Login to add rating");
    } else {
      Navigator.of(context).push(MaterialPageRoute(
          builder: (_) => EditRatingScreen(
                onSubmit: () {
                  _rebuild();
                },
                userID: authBloc.state!.id,
                productID: productID,
              )));
    }
  }

  void _deleteRating(String id) {
    AppService()
        .client
        .request(GRemoveRatingReq((b) => b.vars.id = id))
        .listen((response) {
      if (!response.loading) {
        if (!response.hasErrors) {
          _rebuild();
        }
      }
    });
  }
}
