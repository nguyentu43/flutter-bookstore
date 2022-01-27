import 'dart:async';
import 'dart:io';

import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bookstore/graphql/queries/getUserInfo.req.gql.dart';
import 'package:flutter_bookstore/helpers/app_service.dart';
import 'package:flutter_bookstore/helpers/custom_scroll_behavior.dart';
import 'package:flutter_bookstore/helpers/secure_storage.dart';
import 'package:flutter_bookstore/models/bloc/auth_bloc.dart';
import 'package:flutter_bookstore/routes.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:flutter_bookstore/.env.dart';
import 'package:singleton/singleton.dart';

void main() async {
  // runZonedGuarded(() async {
  //   WidgetsFlutterBinding.ensureInitialized();
  //   await Hive.initFlutter();
  //   await Hive.openBox('bookstore');
  //   // FlutterError.onError = (FlutterErrorDetails details) {
  //   //   FlutterError.presentError(details);
  //   //   exit(1);
  //   // };
  //   Stripe.publishableKey = kStripeApiPk;
  //   runApp(const MyApp());
  // }, (Object error, StackTrace stack) {
  //   print(stack);
  //   print(error);
  //   exit(1);
  // });
  WidgetsFlutterBinding.ensureInitialized();
  Stripe.publishableKey = kStripeApiPk;
  Singleton.register(AppService.createInstance());
  await Singleton.ensureInstanceFor(AppService);

  runApp(const MyApp());
  // runApp(
  // DevicePreview(
  //   enabled: !kReleaseMode,
  //   builder: (context) => MyApp(), // Wrap your app
  // ),
  // );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final AuthBloc _authBloc = AuthBloc(null);

  void _initApp() {
    if (AppService().token!.isNotEmpty) {
      AppService().client.request(GGetUserInfoReq()).listen((response) async {
        if (!response.loading) {
          if (!response.hasErrors) {
            _authBloc.add(LoginEvent(user: response.data!.user));
          } else {
            await secureStorage.delete(key: "token");
          }
        }
      });
    }
  }

  @override
  void initState() {
    super.initState();
    //_initApp();
  }

  @override
  void dispose() {
    super.dispose();
    _authBloc.close();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider<AuthBloc>(create: (context) => _authBloc)],
      child: MaterialApp(
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
          initialRoute: MainRoute.login,
          debugShowCheckedModeBanner: false,
          // builder: (context, widget) {
          //   Widget error = Text('...rendering error...');
          //   if (widget is Scaffold || widget is Navigator)
          //     error = Scaffold(body: Center(child: error));
          //   ErrorWidget.builder = (FlutterErrorDetails errorDetails) => error;
          //   return widget!;
          // },
          scrollBehavior: CustomScrollBehavior()),
    );
  }
}
