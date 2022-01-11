import 'package:flutter/material.dart';
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

  final _emailTextController = TextEditingController();

  final _passwordTextController = TextEditingController();

  void processLogin() {
    if (_formKey.currentState!.validate()) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Processing Data ${_emailTextController.text}")),
      );
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
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text("Online Bookstore", style: textTheme.headline1),
              SizedBox(
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
                          label: Text("Email"), border: OutlineInputBorder()),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: _passwordTextController,
                      obscureText: true,
                      validator:
                          ValidationBuilder().maxLength(50).required().build(),
                      decoration: InputDecoration(
                          label: Text("Password"),
                          border: OutlineInputBorder()),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              RoundedButton(
                child: Text(
                  "Login",
                  style:
                      textTheme.button?.merge(TextStyle(color: Colors.white)),
                ),
                onPressed: processLogin,
                backgroundColor: Colors.orangeAccent,
              ),
              SizedBox(
                height: 10,
              ),
              RoundedButton(
                child: Text(
                  "Login with Google",
                  style:
                      textTheme.button?.merge(TextStyle(color: Colors.white)),
                ),
                onPressed: () {},
                backgroundColor: Colors.redAccent,
              ),
              SizedBox(height: 10),
              RoundedButton(
                child: Text(
                  "Register",
                  style:
                      textTheme.button?.merge(TextStyle(color: Colors.white)),
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
