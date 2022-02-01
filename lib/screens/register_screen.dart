import 'package:cool_alert/cool_alert.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bookstore/graphql/mutations/register.req.gql.dart';
import 'package:flutter_bookstore/helpers/app_service.dart';
import 'package:flutter_bookstore/helpers/secure_storage.dart';
import 'package:flutter_bookstore/widgets/components/rounded_button.dart';
import 'package:flutter_bookstore/widgets/components/top_bar.dart';
import 'package:form_validator/form_validator.dart';
import 'package:restart_app/restart_app.dart';

class RegisterScreen extends StatefulWidget {
  RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _formKey = GlobalKey<FormState>();

  final _emailTextController = TextEditingController();
  final _fullnameTextController = TextEditingController();
  final _passwordTextController = TextEditingController();

  void _processRegister(context) {
    if (_formKey.currentState!.validate()) {
      CoolAlert.show(context: context, type: CoolAlertType.loading);
      AppService()
          .client
          .request(GRegisterReq((b) => b
            ..vars.input.email = _emailTextController.text
            ..vars.input.name = _fullnameTextController.text
            ..vars.input.password = _passwordTextController.text))
          .listen((response) async {
        if (!response.loading) {
          if (!response.hasErrors) {
            await secureStorage.write(
                key: "token", value: response.data!.token);
            Restart.restartApp();
          } else {
            CoolAlert.show(
                context: context,
                type: CoolAlertType.error,
                text: response.graphqlErrors!.first.message);
          }
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
        body: SafeArea(
          child: ListView(
              physics: const BouncingScrollPhysics(),
              children: [
          const TopBar(
            headerText: "REGISTER",
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10.0, 25.0, 10.0, 0.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  "Register a new account",
                  style: textTheme.headline1,
                ),
                const SizedBox(
                  height: 15,
                ),
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        controller: _fullnameTextController,
                        validator: ValidationBuilder()
                            .maxLength(50)
                            .required()
                            .build(),
                        decoration: const InputDecoration(
                            label: Text("Fullname"),
                            border: OutlineInputBorder()),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        controller: _emailTextController,
                        validator: ValidationBuilder()
                            .email()
                            .maxLength(50)
                            .required()
                            .build(),
                        decoration: const InputDecoration(
                            label: Text("Email"), border: OutlineInputBorder()),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        controller: _passwordTextController,
                        obscureText: true,
                        validator: ValidationBuilder()
                            .maxLength(50)
                            .required()
                            .build(),
                        decoration: const InputDecoration(
                            label: const Text("Password"),
                            border: OutlineInputBorder()),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                RoundedButton(
                  child: Text(
                    "Register",
                    style:
                        textTheme.button?.merge(const TextStyle(color: Colors.white)),
                  ),
                  onPressed: () => _processRegister(context),
                  backgroundColor: Colors.green,
                )
              ],
            ),
          ),
              ],
            ),
        ));
  }
}
