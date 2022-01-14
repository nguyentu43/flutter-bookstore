import 'package:flutter/material.dart';
import 'package:flutter_bookstore/routes.dart';
import 'package:flutter_bookstore/widgets/components/rounded_button.dart';

class AccountTab extends StatelessWidget {
  const AccountTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return ListView(
      physics: BouncingScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text("MY ACCOUNT", style: textTheme.headline2)],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: RoundedButton(
            onPressed: () {
              Navigator.of(context).pushNamed(MainRoute.login);
            },
            backgroundColor: Colors.red,
            child: Text("Logout",
                style: textTheme.button?.merge(TextStyle(color: Colors.white))),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: RoundedButton(
            onPressed: () {
              Navigator.of(context).pushNamed(MainRoute.login);
            },
            backgroundColor: Colors.blue,
            child: Text("Login",
                style: textTheme.button?.merge(TextStyle(color: Colors.white))),
          ),
        )
      ],
    );
  }
}
