import 'dart:async';
import 'dart:io';

import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bookstore/helpers/custom_scroll_behavior.dart';
import 'package:flutter_bookstore/routes.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:flutter_bookstore/.env.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  runZonedGuarded(() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Hive.initFlutter();
    await Hive.openBox('bookstore');
    FlutterError.onError = (FlutterErrorDetails details) {
      FlutterError.presentError(details);
      exit(1);
    };
    // runApp(
    //   DevicePreview(
    //     enabled: !kReleaseMode,
    //     builder: (context) => MyApp(), // Wrap your app
    //   ),
    // );
    Stripe.publishableKey = kStripeApiPk;
    runApp(const MyApp());
  }, (Object error, StackTrace stack) {
    exit(1);
  });
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
        builder: (context, widget) {
          Widget error = Text('...rendering error...');
          if (widget is Scaffold || widget is Navigator)
            error = Scaffold(body: Center(child: error));
          ErrorWidget.builder = (FlutterErrorDetails errorDetails) => error;
          return widget!;
        },
        scrollBehavior: CustomScrollBehavior());
  }
}
