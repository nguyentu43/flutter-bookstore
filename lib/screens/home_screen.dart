import 'package:ferry/ferry.dart';
import 'package:ferry_flutter/ferry_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bookstore/graphql/client.dart';
import 'package:flutter_bookstore/graphql/queries/getCategories.data.gql.dart';
import 'package:flutter_bookstore/graphql/queries/getCategories.req.gql.dart';
import 'package:flutter_bookstore/graphql/queries/getCategories.var.gql.dart';
import 'package:flutter_bookstore/helpers/app_service.dart';
import 'package:flutter_bookstore/routes.dart';
import 'package:flutter_bookstore/widgets/components/move_to_category.dart';
import 'package:flutter_bookstore/widgets/tabs/account_tab.dart';
import 'package:flutter_bookstore/widgets/tabs/home_tab.dart';
import 'package:flutter_bookstore/widgets/tabs/orders_tab.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _TabItem {
  final Widget child;
  final IconData icon;
  final String text;
  _TabItem({required this.child, required this.icon, required this.text});
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late TabController _tabController;
  int _currentIndex = 0;

  final tabs = <_TabItem>[
    _TabItem(child: HomeTab(), icon: Icons.home, text: 'Home'),
    _TabItem(child: Container(), icon: Icons.search, text: 'Search'),
    _TabItem(child: OrdersTab(), icon: Icons.list_alt, text: 'Orders'),
    _TabItem(child: AccountTab(), icon: Icons.person, text: 'My Account'),
  ];

  void selectTab(BuildContext context, int index) {
    if (index == 1) {
      Navigator.of(context).pushNamed(MainRoute.search);
      return;
    }
    setState(() {
      _currentIndex = index;
    });
    _tabController.animateTo(index);
  }

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
        length: tabs.length, vsync: this, initialIndex: _currentIndex);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(
            child: Operation(
          operationRequest: GGetCategoriesReq(),
          client: AppService().client,
          builder: (context,
              OperationResponse<GGetCategoriesData, GGetCategoriesVars>?
                  response,
              error) {
            if (response!.loading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            return Padding(
                padding: const EdgeInsets.all(10.0),
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    if (index == 0) {
                      return Text("All Categories",
                          style: textTheme.headline3
                              ?.merge(TextStyle(fontWeight: FontWeight.bold)));
                    }

                    final category = response.data!.categories[index - 1];

                    return MoveToCategory(
                      category: category,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5.0),
                        child: Text(category.name, style: textTheme.headline5),
                      ),
                    );
                  },
                  itemCount: response.data!.categories.length + 1,
                ));
          },
        )),
        bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          child: SizedBox(
              height: 60,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: tabs.asMap().entries.map((item) {
                    int index = item.key;
                    _TabItem tab = item.value;
                    return IconButton(
                        onPressed: () {
                          selectTab(context, index);
                        },
                        icon: Icon(
                          tab.icon,
                          color: _currentIndex == index
                              ? Colors.orange
                              : Colors.black,
                        ));
                  }).toList())),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.shopping_cart),
          onPressed: () {
            Navigator.of(context).pushNamed(MainRoute.cart);
          },
        ),
        body: TabBarView(
          controller: _tabController,
          children: tabs.map((e) => e.child).toList(),
        ),
      ),
    );
  }
}
