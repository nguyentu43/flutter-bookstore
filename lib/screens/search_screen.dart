import 'dart:async';
import 'dart:math';

import 'package:dropdown_search/dropdown_search.dart';
import 'package:ferry/ferry.dart';
import 'package:ferry_flutter/ferry_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bookstore/graphql/client.dart';
import 'package:flutter_bookstore/graphql/queries/getCategories.data.gql.dart';
import 'package:flutter_bookstore/graphql/queries/getCategories.req.gql.dart';
import 'package:flutter_bookstore/graphql/queries/getCategories.var.gql.dart';
import 'package:flutter_bookstore/graphql/queries/getProduct.var.gql.dart';
import 'package:flutter_bookstore/graphql/queries/getProducts.data.gql.dart';
import 'package:flutter_bookstore/graphql/queries/getProducts.req.gql.dart';
import 'package:flutter_bookstore/graphql/queries/getProducts.var.gql.dart';
import 'package:flutter_bookstore/helpers/app_service.dart';
import 'package:flutter_bookstore/widgets/components/book_item.dart';
import 'package:flutter_bookstore/widgets/components/move_to_single_book_screen.dart';
import 'package:flutter_bookstore/widgets/components/rounded_button.dart';
import 'package:flutter_bookstore/widgets/components/top_bar.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class SearchScreen extends StatefulWidget {
  final String keyword;
  final GGetCategoriesData_categories? category;

  const SearchScreen({Key? key, this.keyword = "", this.category})
      : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController _searchEditController = TextEditingController();

  GGetCategoriesData_categories? _currentCategory;
  String _keyword = "";
  final int _limit = 12;
  StreamSubscription? _streamSub;

  final PagingController<int, GGetProductsData_products> _pagingController =
      PagingController(firstPageKey: 0);

  void _fetchProduct(int pageKey) {
    final requestProducts = GGetProductsReq((b) => b
      ..fetchPolicy = FetchPolicy.NetworkOnly
      ..vars.search =
          "keyword=$_keyword${_currentCategory == null ? "" : "&category=" + _currentCategory!.id}"
      ..vars.limit = _limit
      ..vars.offset = pageKey);

    _streamSub =
        AppService().client.request(requestProducts).listen((response) {
      if (!response.loading && !response.hasErrors) {
        final newItems = response.data!.products.toList();
        final isLastPage = newItems.length < _limit;
        if (isLastPage) {
          _pagingController.appendLastPage(newItems);
        } else {
          final nextPageKey = pageKey + newItems.length;
          _pagingController.appendPage(newItems, nextPageKey);
        }
        _streamSub?.cancel();
      }
    });
  }

  @override
  void initState() {
    _searchEditController.text = widget.keyword;
    _currentCategory = widget.category;
    _pagingController.addPageRequestListener((pageKey) {
      _fetchProduct(pageKey);
    });
    super.initState();
  }

  @override
  void dispose() {
    _searchEditController.dispose();
    _pagingController.dispose();
    _streamSub?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;

    final width = MediaQuery.of(context).size.width;
    final axisCount = width ~/ 120;

    return Scaffold(
      body: SafeArea(
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0),
              child: TopBar(
                headerText: "SEARCH",
              ),
            ),
            Container(
              height: 50,
              margin: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: TextField(
                      controller: _searchEditController,
                      decoration: InputDecoration(
                          border: const OutlineInputBorder(),
                          label: Text("Type something",
                              style: textTheme.subtitle1)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: RoundedButton(
                      child: const Icon(
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
                                  contentPadding: const EdgeInsets.all(10.0),
                                  titlePadding: const EdgeInsets.all(10.0),
                                  title: const Text("Filter"),
                                  titleTextStyle: textTheme.button?.merge(
                                      const TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  actions: [
                                    RoundedButton(
                                      child: Text("Close",
                                          style: textTheme.button?.merge(
                                              const TextStyle(
                                                  color: Colors.white))),
                                      onPressed: () =>
                                          Navigator.of(context).pop(),
                                    )
                                  ],
                                  content: Container(
                                    height: 200,
                                    width: double.infinity,
                                    child: Column(
                                      children: [
                                        Operation(
                                            operationRequest:
                                                GGetCategoriesReq(),
                                            builder: (context,
                                                OperationResponse<
                                                        GGetCategoriesData,
                                                        GGetCategoriesVars>?
                                                    response,
                                                error) {
                                              if (response!.loading)
                                                return const CircularProgressIndicator();
                                              return DropdownSearch<
                                                  GGetCategoriesData_categories>(
                                                showClearButton: true,
                                                selectedItem: _currentCategory,
                                                itemAsString: (u) => u!.name,
                                                label: "Choose a category",
                                                items: response.data!.categories
                                                    .toList(),
                                                onChanged: (data) {
                                                  _currentCategory = data;
                                                  _pagingController.refresh();
                                                },
                                              );
                                            },
                                            client: AppService().client)
                                      ],
                                    ),
                                  ));
                            });
                      },
                    ),
                  ),
                  RoundedButton(
                    child: const Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      _keyword = _searchEditController.text;
                      _pagingController.refresh();
                    },
                    backgroundColor: Colors.green,
                  ),
                ],
              ),
            ),
            Padding(
                padding: const EdgeInsets.all(10.0),
                child: PagedGridView<int, GGetProductsData_products>(
                  physics: const BouncingScrollPhysics(),
                  shrinkWrap: true,
                  pagingController: _pagingController,
                  builderDelegate:
                      PagedChildBuilderDelegate<GGetProductsData_products>(
                          itemBuilder: (context, item, index) => BookItem(
                                image: item.images![0].secure_url,
                                discount: item.discount!,
                                id: item.id,
                                slug: item.slug,
                              )),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 10.0,
                    crossAxisCount: axisCount,
                    childAspectRatio: 0.7,
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
