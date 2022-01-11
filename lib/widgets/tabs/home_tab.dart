import 'package:flutter/material.dart';
import 'package:flutter_bookstore/widgets/components/book_item.dart';
import 'package:flutter_bookstore/widgets/components/category_item.dart';
import 'package:flutter_bookstore/widgets/components/detail_book_item.dart';
import 'package:flutter_bookstore/widgets/components/laid_book_item.dart';

class HomeTab extends StatelessWidget {
  HomeTab({Key? key}) : super(key: key);

  final _tabs = List.generate(4, (index) => Tab(text: 'Category ${index}'));

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
          ListHeader(
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
                ListHeader(
                    child: Text("Recommended For You",
                        style: textTheme.headline4?.merge(TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white)))),
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
          ListHeader(
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
          ListHeader(
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
          ListHeader(
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
          // DefaultTabController(
          //   length: _tabs.length,
          //   child: Column(
          //     crossAxisAlignment: CrossAxisAlignment.start,
          //     children: [
          //       TabBar(tabs: _tabs),
          //       TabBarView(children: _tabs.map((e) => Text("hello")).toList())
          //     ],
          //   ),
          // )
        ],
      ),
    );
  }
}

class ListHeader extends StatelessWidget {
  const ListHeader({Key? key, required this.child}) : super(key: key);
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
