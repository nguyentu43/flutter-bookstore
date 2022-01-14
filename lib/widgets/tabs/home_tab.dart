import 'package:ferry/typed_links.dart';
import 'package:ferry_flutter/ferry_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bookstore/graphql/client.dart';
import 'package:flutter_bookstore/graphql/queries/getCategories.data.gql.dart';
import 'package:flutter_bookstore/graphql/queries/getCategories.req.gql.dart';
import 'package:flutter_bookstore/graphql/queries/getProducts.data.gql.dart';
import 'package:flutter_bookstore/graphql/queries/getProducts.req.gql.dart';
import 'package:flutter_bookstore/graphql/queries/getProducts.var.gql.dart';
import 'package:flutter_bookstore/widgets/components/book_item.dart';
import 'package:flutter_bookstore/widgets/components/category_item.dart';
import 'package:flutter_bookstore/widgets/components/detail_book_item.dart';
import 'package:flutter_bookstore/widgets/components/laid_book_item.dart';
import 'package:built_collection/built_collection.dart';

class HomeTab extends StatefulWidget {
  HomeTab({Key? key}) : super(key: key);

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> with TickerProviderStateMixin {
  BuiltList<GGetCategoriesData_categories> _categories = BuiltList();

  @override
  void initState() {
    super.initState();
    getCategories();
  }

  void getCategories() {
    client.request(GGetCategoriesReq()).listen((response) {
      setState(() {
        if (response.loading) return;
        _categories = response.data!.categories;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return ListView(
      physics: BouncingScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: Icon(Icons.subject)),
              Text(
                "HOME",
                style: textTheme.headline2,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                width: 30,
              )
            ],
          ),
        ),
        _ListHeader(
            child: Text("Featured Categories",
                style: textTheme.headline4
                    ?.merge(TextStyle(fontWeight: FontWeight.bold)))),
        Container(
            margin: const EdgeInsets.only(left: 10.0, bottom: 10.0),
            height: 120,
            child: !_categories.isEmpty
                ? ListView.builder(
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    itemCount: _categories.length,
                    itemBuilder: (context, index) => CategoryItem(
                          name: _categories[index].name,
                          id: _categories[index].id,
                        ))
                : Center(child: CircularProgressIndicator())),
        Container(
          decoration: BoxDecoration(
              color: Colors.green[400],
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  topRight: Radius.circular(10.0))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _ListHeader(
                  child: Text("Recommended For You",
                      style: textTheme.headline4?.merge(TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white)))),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: DetailBookItem(),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: SizedBox(
                        height: 160,
                        child: ListView(
                          physics: BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          children: [],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        _ListHeader(
            child: Text("Best-Selling",
                style: textTheme.headline4
                    ?.merge(TextStyle(fontWeight: FontWeight.bold)))),
        Container(
            height: 160,
            margin: EdgeInsets.only(left: 10.0),
            child: Operation(
              client: client,
              operationRequest:
                  GGetProductsReq((b) => b.vars.search = "order=0&limit=10"),
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
                return ListView.builder(
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
        _ListHeader(
            child: Text("On Sale",
                style: textTheme.headline4
                    ?.merge(TextStyle(fontWeight: FontWeight.bold)))),
        Container(
            height: 180,
            margin: EdgeInsets.only(left: 10.0),
            child: Operation(
              client: client,
              operationRequest:
                  GGetProductsReq((b) => b.vars.search = "order=4&limit=10"),
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
                return ListView.builder(
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
                    ?.merge(TextStyle(fontWeight: FontWeight.bold)))),
        Container(
            height: 160,
            margin: EdgeInsets.only(left: 10.0),
            child: Operation(
              client: client,
              operationRequest:
                  GGetProductsReq((b) => b.vars.search = "order=1&limit=10"),
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
                return ListView.builder(
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
        Container(
          margin: EdgeInsets.symmetric(vertical: 10.0),
          child: _categories.isNotEmpty
              ? _CategoryTabs(categories: _categories)
              : Center(
                  child: CircularProgressIndicator(),
                ),
        )
      ],
    );
  }
}

class _ListHeader extends StatelessWidget {
  const _ListHeader({Key? key, required this.child}) : super(key: key);
  final Widget child;
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
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
                    ?.merge(TextStyle(fontWeight: FontWeight.bold)),
                labelColor: Colors.black,
                onTap: (index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
              ),
            ),
            Operation(
              client: client,
              operationRequest: GGetProductsReq((b) => b.vars.search =
                  "category=${widget.categories[currentIndex].id}&limit=16"),
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
