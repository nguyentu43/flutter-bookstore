import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bookstore/graphql/queries/getUserInfo.data.gql.dart';
import 'package:flutter_bookstore/models/bloc/auth_bloc.dart';
import 'package:flutter_bookstore/routes.dart';
import 'package:flutter_bookstore/widgets/components/rounded_button.dart';

class AccountTab extends StatelessWidget {
  const AccountTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return ListView(
      padding: const EdgeInsets.all(10.0),
      physics: const BouncingScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text("MY ACCOUNT", style: textTheme.headline2)],
          ),
        ),
        BlocBuilder<AuthBloc, GGetUserInfoData_user?>(
            builder: (context, state) {
          if (state == null) {
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: RoundedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(MainRoute.login);
                },
                backgroundColor: Colors.blue,
                child: Text("Login",
                    style: textTheme.button
                        ?.merge(const TextStyle(color: Colors.white))),
              ),
            );
          }

          return Column(
            children: [
              CircleAvatar(
                child: Icon(
                  Icons.person,
                  size: 40.0,
                ),
                radius: 50.0,
              ),
              Text(state.name,
                  style: textTheme.headline3
                      ?.merge(TextStyle(fontWeight: FontWeight.bold))),
              SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: RoundedButton(
                    onPressed: () {
                      BlocProvider.of<AuthBloc>(context).add(LogoutEvent());
                      Navigator.of(context).pushNamed(MainRoute.login);
                    },
                    backgroundColor: Colors.pink,
                    child: Text("Wishlist",
                        style: textTheme.button
                            ?.merge(const TextStyle(color: Colors.white))),
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: RoundedButton(
                    onPressed: () {
                      BlocProvider.of<AuthBloc>(context).add(LogoutEvent());
                      Navigator.of(context).pushNamed(MainRoute.login);
                    },
                    backgroundColor: Colors.red,
                    child: Text("Logout",
                        style: textTheme.button
                            ?.merge(const TextStyle(color: Colors.white))),
                  ),
                ),
              ),
            ],
          );
        }),
      ],
    );
  }
}
