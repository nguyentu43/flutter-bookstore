import 'package:flutter/material.dart';
import 'package:flutter_bookstore/routes.dart';
import 'package:flutter_bookstore/widgets/components/background.dart';
import 'package:flutter_bookstore/widgets/tabs/account_tab.dart';
import 'package:flutter_bookstore/widgets/tabs/home_tab.dart';
import 'package:flutter_bookstore/widgets/tabs/orders_tab.dart';
import 'package:flutter_bookstore/widgets/tabs/search_tab.dart';

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
  int currentIndex = 0;

  final tabs = <_TabItem>[
    _TabItem(child: HomeTab(), icon: Icons.home, text: 'Home'),
    _TabItem(child: SearchTab(), icon: Icons.search, text: 'Search'),
    _TabItem(child: OrdersTab(), icon: Icons.list_alt, text: 'Orders'),
    _TabItem(child: AccountTab(), icon: Icons.person, text: 'My Account'),
  ];

  void selectTab(int index) {
    setState(() {
      currentIndex = index;
    });
    _tabController.animateTo(index);
  }

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
        length: tabs.length, vsync: this, initialIndex: currentIndex);
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
            child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    if (index == 0) {
                      return Text("Categories",
                          style: textTheme.headline3
                              ?.merge(TextStyle(fontWeight: FontWeight.bold)));
                    }
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5.0),
                      child: Text("Category", style: textTheme.headline5),
                    );
                  },
                  itemCount: 10,
                ))),
        bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          child: Container(
              height: 60,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: tabs.asMap().entries.map((item) {
                    int index = item.key;
                    _TabItem tab = item.value;
                    return IconButton(
                        onPressed: () {
                          selectTab(index);
                        },
                        icon: Icon(
                          tab.icon,
                          color: currentIndex == index
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
