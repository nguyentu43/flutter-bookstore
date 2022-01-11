import 'package:flutter/material.dart';
import 'package:flutter_bookstore/widgets/components/background.dart';
import 'package:flutter_bookstore/widgets/tabs/home_tab.dart';

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
    _TabItem(child: Text('search'), icon: Icons.search, text: 'Search'),
    _TabItem(child: Text('orders'), icon: Icons.list_alt, text: 'Orders'),
    _TabItem(child: Text('account'), icon: Icons.person, text: 'My Account'),
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
    _tabController = TabController(length: tabs.length, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
        drawer: Drawer(
            child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Categories", style: textTheme.headline2),
              Text("Category", style: textTheme.headline4),
              Text("Category", style: textTheme.headline4),
              Text("Category", style: textTheme.headline4),
              Text("Category", style: textTheme.headline4),
              Text("Category", style: textTheme.headline4),
            ],
          ),
        )),
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
          onPressed: () {},
        ),
        body: TabBarView(
          controller: _tabController,
          children: tabs.map((e) => e.child).toList(),
        ));
  }
}
