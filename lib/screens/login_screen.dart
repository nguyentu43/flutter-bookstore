import 'package:cool_alert/cool_alert.dart';
import 'package:ferry/ferry.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bookstore/graphql/client.dart';
import 'package:flutter_bookstore/graphql/queries/login.req.gql.dart';
import 'package:flutter_bookstore/helpers/app_service.dart';
import 'package:flutter_bookstore/helpers/secure_storage.dart';
import 'package:flutter_bookstore/routes.dart';
import 'package:flutter_bookstore/widgets/components/background.dart';
import 'package:flutter_bookstore/widgets/components/rounded_button.dart';
import 'package:form_validator/form_validator.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();

  final _emailTextController = TextEditingController(text: "admin@example.com");

  final _passwordTextController = TextEditingController(text: "12345678");

  void _processLogin(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      CoolAlert.show(context: context, type: CoolAlertType.loading);
      AppService()
          .client
          .request(GLoginReq((b) => b
            ..vars.email = _emailTextController.text
            ..vars.password = _passwordTextController.text))
          .listen((response) async {
        Navigator.of(context).pop();
        if (!response.hasErrors) {
          await secureStorage.write(key: "token", value: response.data!.token);
        }
      });
    }
  }

  @override
  void dispose() {
    super.dispose();
    _emailTextController.dispose();
    _passwordTextController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    return Scaffold(
        body: Background(
            child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text("Online Bookstore", style: textTheme.headline1),
              const SizedBox(
                height: 15,
              ),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      controller: _emailTextController,
                      validator: ValidationBuilder()
                          .email()
                          .maxLength(50)
                          .required()
                          .build(),
                      decoration: InputDecoration(
                          label: Text("Email", style: textTheme.subtitle1),
                          border: const OutlineInputBorder()),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: _passwordTextController,
                      obscureText: true,
                      validator:
                          ValidationBuilder().maxLength(50).required().build(),
                      decoration: InputDecoration(
                          label: Text("Password", style: textTheme.subtitle1),
                          border: const OutlineInputBorder()),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              RoundedButton(
                child: Text(
                  "Login",
                  style: textTheme.button
                      ?.merge(const TextStyle(color: Colors.white)),
                ),
                onPressed: () => _processLogin(context),
                backgroundColor: Colors.blue,
              ),
              const SizedBox(
                height: 10,
              ),
              RoundedButton(
                child: Text(
                  "Login with Google",
                  style: textTheme.button
                      ?.merge(const TextStyle(color: Colors.white)),
                ),
                onPressed: () {},
                backgroundColor: Colors.redAccent,
              ),
              const SizedBox(height: 10),
              RoundedButton(
                child: Text(
                  "Register",
                  style: textTheme.button
                      ?.merge(const TextStyle(color: Colors.white)),
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed(MainRoute.register);
                },
                backgroundColor: Colors.green,
              )
            ],
          ))
        ],
      ),
    )));
  }
}
