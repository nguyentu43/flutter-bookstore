import 'package:flutter/material.dart';
import 'package:flutter_bookstore/widgets/components/book_item.dart';
import 'package:flutter_bookstore/widgets/components/category_item.dart';
import 'package:flutter_bookstore/widgets/components/detail_book_item.dart';
import 'package:flutter_bookstore/widgets/components/laid_book_item.dart';

class HomeTab extends StatefulWidget {
  HomeTab({Key? key}) : super(key: key);

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> with TickerProviderStateMixin {
  late TabController _tabController;
  final _tabs = List.generate(4, (index) => Tab(text: 'Category ${index}'));
  int selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _tabs.length, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return ListView(
      physics: BouncingScrollPhysics(),
      children: [
        Row(
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
        _ListHeader(
            child: Text("Featured Categories",
                style: textTheme.headline4
                    ?.merge(TextStyle(fontWeight: FontWeight.bold)))),
        Container(
          margin: const EdgeInsets.only(left: 10.0, bottom: 10.0),
          height: 120,
          child: ListView(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              children: [
                CategoryItem(),
                CategoryItem(),
                CategoryItem(),
                CategoryItem(),
                CategoryItem(),
                CategoryItem(),
                CategoryItem(),
              ]),
        ),
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
                          children: [
                            BookItem(),
                            BookItem(),
                            BookItem(),
                            BookItem(),
                            BookItem(),
                            BookItem(),
                          ],
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
          child: ListView(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            children: [
              BookItem(),
              BookItem(),
              BookItem(),
              BookItem(),
              BookItem(),
              BookItem(),
            ],
          ),
        ),
        _ListHeader(
            child: Text("On Sale",
                style: textTheme.headline4
                    ?.merge(TextStyle(fontWeight: FontWeight.bold)))),
        Container(
          height: 180,
          margin: EdgeInsets.only(left: 10.0),
          child: ListView(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            children: [
              LaidBookItem(),
              LaidBookItem(),
              LaidBookItem(),
              LaidBookItem(),
              LaidBookItem(),
            ],
          ),
        ),
        _ListHeader(
            child: Text("New Release",
                style: textTheme.headline4
                    ?.merge(TextStyle(fontWeight: FontWeight.bold)))),
        Container(
          height: 160,
          margin: EdgeInsets.only(left: 10.0),
          child: ListView(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            children: [
              BookItem(),
              BookItem(),
              BookItem(),
              BookItem(),
              BookItem(),
              BookItem(),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 10.0),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: TabBar(
                    tabs: _tabs,
                    isScrollable: true,
                    indicatorColor: Colors.orange,
                    controller: _tabController,
                    labelStyle: textTheme.headline6,
                    labelColor: Colors.black,
                    onTap: (index) {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                  ),
                ),
                IndexedStack(
                  index: selectedIndex,
                  children: _tabs
                      .map((e) => Visibility(
                            child: GridView.count(
                              shrinkWrap: true,
                              mainAxisSpacing: 10.0,
                              crossAxisCount: 4,
                              childAspectRatio: 0.8,
                              children: List.generate(
                                  10,
                                  (index) =>
                                      Center(child: BookItem(right: 0.0))),
                            ),
                          ))
                      .toList(),
                )
              ],
            ),
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
