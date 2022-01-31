import 'dart:async';
import 'dart:io';

import 'package:cool_alert/cool_alert.dart';
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

import 'models/bloc/cart_bloc.dart';

void main() async {
  // runZonedGuarded(() async {
  //   WidgetsFlutterBinding.ensureInitialized();

  //   // FlutterError.onError = (FlutterErrorDetails details) {
  //   //   FlutterError.presentError(details);
  //   //   exit(1);
  //   // };

  //   Stripe.publishableKey = kStripeApiPk;
  //   Singleton.register(AppService.createInstance());
  //   await Singleton.ensureInstanceFor(AppService);

  //   runApp(const MyApp());
  // }, (Object error, StackTrace stack) {
  //   //exit(1);
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
  final CartBloc _cartBloc = CartBloc([]);

  void _initApp() {
    if (AppService().token != null) {
      AppService().client.request(GGetUserInfoReq()).listen((response) async {
        if (!response.loading) {
          if (!response.hasErrors) {
            _authBloc.add(LoginEvent(user: response.data!.user));
            _cartBloc.add(UpdateCartEvent(cart: response.data!.cart!.toList()));
          } else {
            await secureStorage.delete(key: "token");
            CoolAlert.show(
                context: context,
                type: CoolAlertType.warning,
                text: "Token not valid");
          }
        }
      });
    }
  }

  @override
  void initState() {
    super.initState();
    _initApp();
  }

  @override
  void dispose() {
    super.dispose();
    _authBloc.close();
    _cartBloc.close();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(create: (context) => _authBloc),
        BlocProvider<CartBloc>(create: (context) => _cartBloc)
      ],
      child: MaterialApp(
          title: 'Online Bookstore',
          theme: ThemeData(
              primarySwatch: Colors.blue,
              fontFamily: 'Dosis',
              textTheme: const TextTheme(
                button: TextStyle(fontSize: 16, color: Colors.white),
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
          scrollBehavior: CustomScrollBehavior()),
    );
  }
}
