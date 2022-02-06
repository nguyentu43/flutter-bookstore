import 'dart:async';

import 'package:ferry/typed_links.dart';
import 'package:ferry_flutter/ferry_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bookstore/graphql/queries/getCategories.data.gql.dart';
import 'package:flutter_bookstore/graphql/queries/getCategories.req.gql.dart';
import 'package:flutter_bookstore/graphql/queries/getProducts.data.gql.dart';
import 'package:flutter_bookstore/graphql/queries/getProducts.req.gql.dart';
import 'package:flutter_bookstore/graphql/queries/getProducts.var.gql.dart';
import 'package:flutter_bookstore/graphql/queries/getRecommendProducts.data.gql.dart';
import 'package:flutter_bookstore/graphql/queries/getRecommendProducts.req.gql.dart';
import 'package:flutter_bookstore/graphql/queries/getRecommendProducts.var.gql.dart';
import 'package:flutter_bookstore/helpers/app_service.dart';
import 'package:flutter_bookstore/models/bloc/auth_bloc.dart';
import 'package:flutter_bookstore/widgets/components/book_item.dart';
import 'package:flutter_bookstore/widgets/components/category_item.dart';
import 'package:flutter_bookstore/widgets/components/detail_book_item.dart';
import 'package:flutter_bookstore/widgets/components/laid_book_item.dart';
import 'package:built_collection/built_collection.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> with TickerProviderStateMixin {
  BuiltList<GGetCategoriesData_categories> _categories = BuiltList();
  StreamSubscription? subscription;

  @override
  void initState() {
    super.initState();
    _fetchCategories();
  }

  void _fetchCategories() {
    subscription =
        AppService().client.request(GGetCategoriesReq()).listen((response) {
      if (!response.loading) {
        if (!response.hasErrors) {
          setState(() {
            _categories = response.data!.categories;
          });
        }
        subscription?.cancel();
      }
    });
  }

  @override
  void dispose() {
    subscription?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return ListView(
      physics: const BouncingScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: GestureDetector(
                      onTap: () {
                        Scaffold.of(context).openDrawer();
                      },
                      child: const Icon(Icons.subject))),
              Text(
                "HOME",
                style: textTheme.headline2,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                width: 30,
              )
            ],
          ),
        ),
        _ListHeader(
            child: Text("Featured Categories",
                style: textTheme.headline4
                    ?.merge(const TextStyle(fontWeight: FontWeight.bold)))),
        _CategoryList(categories: _categories),
        _RecommendBooks(textTheme: textTheme),
        _BestSellingBooks(textTheme: textTheme),
        _ListHeader(
            child: Text("On Sale",
                style: textTheme.headline4
                    ?.merge(const TextStyle(fontWeight: FontWeight.bold)))),
        SizedBox(
            height: 180,
            child: Operation(
              client: AppService().client,
              operationRequest: GGetProductsReq((b) => b
                ..vars.search = "order=4"
                ..vars.limit = 10),
              builder: (context,
                  OperationResponse<GGetProductsData, GGetProductsVars>?
                      response,
                  error) {
                if (response!.loading) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
                final products = response.data!.products;
                return ListView.builder(
                    padding: const EdgeInsets.only(left: 10.0),
                    scrollDirection: Axis.horizontal,
                    itemCount: products.length,
                    itemBuilder: (context, index) {
                      final product = products[index];
                      return LaidBookItem(
                        name: product.name,
                        image: product.images![0].secure_url,
                        discount: product.discount!,
                        id: product.id,
                        slug: product.slug,
                      );
                    });
              },
            )),
        _ListHeader(
            child: Text("New Release",
                style: textTheme.headline4
                    ?.merge(const TextStyle(fontWeight: FontWeight.bold)))),
        SizedBox(
            height: 160,
            child: Operation(
              client: AppService().client,
              operationRequest: GGetProductsReq((b) => b
                ..vars.search = "order=1"
                ..vars.limit = 10),
              builder: (context,
                  OperationResponse<GGetProductsData, GGetProductsVars>?
                      response,
                  error) {
                if (response!.loading) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
                final products = response.data!.products;
                return ListView.builder(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.only(left: 10.0),
                    itemCount: products.length,
                    itemBuilder: (context, index) {
                      final product = products[index];
                      return BookItem(
                        image: product.images![0].secure_url,
                        discount: product.discount!,
                        id: product.id,
                        slug: product.slug,
                      );
                    });
              },
            )),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 10.0),
          child: _categories.isNotEmpty
              ? _CategoryTabs(categories: _categories)
              : const Center(
                  child: CircularProgressIndicator(),
                ),
        )
      ],
    );
  }
}

class _BestSellingBooks extends StatelessWidget {
  const _BestSellingBooks({
    Key? key,
    required this.textTheme,
  }) : super(key: key);

  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10.0),
      decoration: BoxDecoration(
          color: Colors.red[400],
          borderRadius:
              const BorderRadius.only(topLeft: Radius.circular(10.0))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _ListHeader(
              child: Text("Best-Selling",
                  style: textTheme.headline4?.merge(const TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white)))),
          Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: SizedBox(
                height: 160,
                child: Operation(
                  client: AppService().client,
                  operationRequest: GGetProductsReq((b) => b
                    ..vars.search = "order=0"
                    ..vars.limit = 10),
                  builder: (context,
                      OperationResponse<GGetProductsData, GGetProductsVars>?
                          response,
                      error) {
                    if (response!.loading) {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                    final products = response.data!.products;
                    return ListView.builder(
                        padding: const EdgeInsets.only(left: 10.0),
                        scrollDirection: Axis.horizontal,
                        itemCount: products.length,
                        itemBuilder: (context, index) {
                          final product = products[index];
                          return BookItem(
                            image: product.images![0].secure_url,
                            discount: product.discount!,
                            id: product.id,
                            slug: product.slug,
                          );
                        });
                  },
                )),
          ),
        ],
      ),
    );
  }
}

class _RecommendBooks extends StatelessWidget {
  const _RecommendBooks({
    Key? key,
    required this.textTheme,
  }) : super(key: key);

  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.green[400],
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(10.0),
          )),
      child: Visibility(
        visible: BlocProvider.of<AuthBloc>(context).state != null,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _ListHeader(
                child: Text("Recommended For You",
                    style: textTheme.headline4?.merge(const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white)))),
            Operation(
                operationRequest: GGetRecommentProductsReq(),
                builder: (context,
                    OperationResponse<GGetRecommentProductsData,
                            GGetRecommentProductsVars>?
                        response,
                    error) {
                  if (response!.loading) {
                    return const SizedBox(
                      height: 80,
                      child: Center(
                        child: CircularProgressIndicator(),
                      ),
                    );
                  }

                  final products = response.data!.products;
                  final firstProduct = products.first;

                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10.0)),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: DetailBookItem(
                              id: firstProduct.id,
                              slug: firstProduct.slug,
                              image: firstProduct.images!.first.secure_url,
                              author: firstProduct.authors!
                                  .map((a) => a.name)
                                  .join(', '),
                              price: firstProduct.price,
                              discount: firstProduct.discount ?? 0.0,
                              name: firstProduct.name,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 160,
                        child: ListView(
                          padding: const EdgeInsets.only(left: 10.0),
                          physics: const BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          children: products
                              .skip(1)
                              .map((product) => BookItem(
                                  image: product.images![0].secure_url,
                                  discount: product.discount ?? 0.0,
                                  id: product.id,
                                  slug: product.slug))
                              .toList(),
                        ),
                      ),
                    ],
                  );
                },
                client: AppService().client)
          ],
        ),
      ),
    );
  }
}

class _CategoryList extends StatelessWidget {
  const _CategoryList({
    Key? key,
    required BuiltList<GGetCategoriesData_categories> categories,
  })  : _categories = categories,
        super(key: key);

  final BuiltList<GGetCategoriesData_categories> _categories;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(bottom: 10.0),
        height: 120,
        child: _categories.isNotEmpty
            ? ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.only(left: 10.0),
                physics: const BouncingScrollPhysics(),
                itemCount: _categories.length,
                itemBuilder: (context, index) =>
                    CategoryItem(category: _categories[index]))
            : const Center(child: CircularProgressIndicator()));
  }
}

class _ListHeader extends StatelessWidget {
  const _ListHeader({Key? key, required this.child}) : super(key: key);
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, top: 10.0, bottom: 10.0),
      child: child,
    );
  }
}

class _CategoryTabs extends StatefulWidget {
  const _CategoryTabs({Key? key, required this.categories}) : super(key: key);

  final BuiltList<GGetCategoriesData_categories> categories;

  @override
  State<_CategoryTabs> createState() => _CategoryTabsState();
}

class _CategoryTabsState extends State<_CategoryTabs> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return DefaultTabController(
      length: widget.categories.length,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: TabBar(
                tabs: widget.categories
                    .map((i) => Tab(
                          text: i.name,
                        ))
                    .toList(),
                isScrollable: true,
                indicatorColor: Colors.orange,
                labelStyle: textTheme.headline6
                    ?.merge(const TextStyle(fontWeight: FontWeight.bold)),
                labelColor: Colors.black,
                onTap: (index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
              ),
            ),
            Operation(
              client: AppService().client,
              operationRequest: GGetProductsReq((b) => b.vars.search =
                  "category=${widget.categories[currentIndex].id}"),
              builder: (context,
                  OperationResponse<GGetProductsData, GGetProductsVars>?
                      response,
                  error) {
                if (response!.loading) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
                final products = response.data!.products;
                return GridView.builder(
                    itemCount: products.length,
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 10.0,
                      crossAxisCount: 3,
                      childAspectRatio: 0.7,
                    ),
                    itemBuilder: (context, index) {
                      final product = products[index];
                      return BookItem(
                        image: product.images![0].secure_url,
                        discount: product.discount!,
                        id: product.id,
                        slug: product.slug,
                      );
                    });
              },
            )
          ],
        ),
      ),
    );
  }
}
