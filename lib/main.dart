import 'package:flutter/material.dart';
import 'package:flutter_bookstore/helpers/CustomScrollBehavior.dart';
import 'package:flutter_bookstore/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Online Bookstore',
        theme: ThemeData(
            primarySwatch: Colors.blue,
            fontFamily: 'Dosis',
            textTheme: const TextTheme(
              button: TextStyle(fontSize: 16),
              bodyText1: TextStyle(fontSize: 16),
              caption: TextStyle(fontSize: 12),
              subtitle1: TextStyle(fontSize: 16, color: Colors.black54),
              subtitle2: TextStyle(fontSize: 14, color: Colors.black54),
              headline1: TextStyle(fontSize: 36, color: Colors.black),
              headline2: TextStyle(fontSize: 30, color: Colors.black),
              headline3: TextStyle(fontSize: 27, color: Colors.black),
              headline4: TextStyle(fontSize: 24, color: Colors.black),
              headline5: TextStyle(fontSize: 20, color: Colors.black),
              headline6: TextStyle(fontSize: 18, color: Colors.black),
            )),
        onGenerateRoute: MainRoute.onGenerateRoute,
        initialRoute: MainRoute.home,
        debugShowCheckedModeBanner: false,
        scrollBehavior: CustomScrollBehavior());
  }
}
