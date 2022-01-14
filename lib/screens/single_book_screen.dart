import 'package:ferry/ferry.dart';
import 'package:ferry_flutter/ferry_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bookstore/graphql/client.dart';
import 'package:flutter_bookstore/graphql/queries/getProduct.data.gql.dart';
import 'package:flutter_bookstore/graphql/queries/getProduct.req.gql.dart';
import 'package:flutter_bookstore/graphql/queries/getProduct.var.gql.dart';
import 'package:flutter_bookstore/widgets/components/rounded_button.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_spinbox/flutter_spinbox.dart';

class SingleBookScreen extends StatefulWidget {
  SingleBookScreen({Key? key, required this.slug}) : super(key: key);

  final String slug;

  @override
  State<SingleBookScreen> createState() => _SingleBookScreenState();
}

class _SingleBookScreenState extends State<SingleBookScreen> {
  int currentIndex = 0;

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
              if (response!.loading) return CircularProgressIndicator();

              final product = response.data!.product;

              return ListView(
                physics: BouncingScrollPhysics(),
                children: [
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
                              Image.network(product!.images!.first.secure_url),
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
                                  "\$ ${(product.price * (1.0 - product.discount!)).toStringAsFixed(1)}",
                                  style: textTheme.headline4),
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Chip(
                                  label: Text(
                                      "${(product.discount! * 100.0).toStringAsFixed(1)}%",
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
                                Text(product.category!.name)
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 10.0),
                                  child: Text("Review",
                                      style: textTheme.headline5),
                                ),
                                Text("3")
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
                        SizedBox(width: 100, child: SpinBox()),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: RoundedButton(
                            child: Icon(Icons.add_shopping_cart),
                            onPressed: () {},
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: RoundedButton(
                            backgroundColor: Colors.pink,
                            child: Icon(Icons.favorite),
                            onPressed: () {},
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
                          currentIndex = index;
                        });
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: IndexedStack(
                      index: currentIndex,
                      children: [
                        Html(
                          data: product.description!,
                        ),
                        Text("Reviews"),
                      ],
                    ),
                  )
                ],
              );
            },
            client: client,
            operationRequest: GGetProductReq((b) => b.vars.slug = widget.slug),
          ),
        ),
      ),
    );
  }
}
