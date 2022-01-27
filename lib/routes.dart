import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bookstore/screens/cart_screen.dart';
import 'package:flutter_bookstore/screens/home_screen.dart';
import 'package:flutter_bookstore/screens/login_screen.dart';
import 'package:flutter_bookstore/screens/register_screen.dart';
import 'package:flutter_bookstore/screens/search_screen.dart';

class MainRoute {
  static const home = '/';
  static const cart = '/cart';
  static const search = '/search';
  static const login = '/login';
  static const register = '/register';

  static Route<dynamic> onGenerateRoute(RouteSettings setting) {
    switch (setting.name) {
      case home:
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case cart:
        return MaterialPageRoute(builder: (_) => CartScreen());
      case login:
        return MaterialPageRoute(builder: (_) => LoginScreen());
      case register:
        return MaterialPageRoute(builder: (_) => RegisterScreen());
      case search:
        return MaterialPageRoute(builder: (_) => SearchScreen());
      default:
        throw Exception("Route name not found");
    }
  }
}
