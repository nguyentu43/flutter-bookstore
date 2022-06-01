import 'package:cool_alert/cool_alert.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bookstore/graphql/mutations/addCartItem.req.gql.dart';
import 'package:flutter_bookstore/graphql/queries/getUserInfo.data.gql.dart';
import 'package:flutter_bookstore/helpers/app_service.dart';
import 'package:flutter_bookstore/models/bloc/auth_bloc.dart';
import 'package:flutter_bookstore/models/bloc/cart_bloc.dart';
import 'package:flutter_bookstore/widgets/components/move_to_single_book_screen.dart';
import 'package:flutter_bookstore/widgets/components/rounded_button.dart';

class DetailBookItem extends StatelessWidget {
  final String id;
  final String slug;
  final String name;
  final String author;
  final double price;
  final double discount;
  final String image;
  const DetailBookItem(
      {Key? key,
      required this.id,
      required this.slug,
      required this.name,
      required this.author,
      required this.price,
      required this.image,
      required this.discount})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return SizedBox(
      height: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          MoveToSingleBookScreen(
            slug: slug,
            child: Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.network(image),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MoveToSingleBookScreen(
                    slug: slug, child: Text(name, style: textTheme.headline5)),
                Text(author, style: textTheme.subtitle1),
                Text("\$ ${(price * (1 - discount)).toStringAsFixed(2)}",
                    style: textTheme.headline5),
                Chip(
                  label: Text("${(discount * 100).toStringAsFixed(1)}%",
                      style: textTheme.caption
                          ?.merge(const TextStyle(color: Colors.white))),
                  backgroundColor: Colors.orange,
                ),
                const Spacer(),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: RoundedButton(
                        child: const Icon(Icons.add_shopping_cart,
                            color: Colors.white),
                        onPressed: () {
                          if (BlocProvider.of<AuthBloc>(context).state ==
                              null) {
                            CoolAlert.show(
                                context: context,
                                type: CoolAlertType.info,
                                text: "Login to add cart");
                            return;
                          }

                          final cart = BlocProvider.of<CartBloc>(context).state;
                          int quantity = 1;
                          for (var element in cart) {
                            if (element!.id == id) {
                              quantity = element.quantity + 1;
                            }
                          }

                          AppService()
                              .client
                              .request(GAddCartItemReq((b) => b
                                ..vars.input.id = id
                                ..vars.input.quantity = quantity))
                              .listen((response) {
                            if (!response.loading) {
                              if (!response.hasErrors) {
                                final cart = response.data!.cart!
                                    .map((item) =>
                                        GGetUserInfoData_cart.fromJson(
                                            item.toJson()))
                                    .toList();
                                BlocProvider.of<CartBloc>(context)
                                    .add(UpdateCartEvent(cart: cart));
                                CoolAlert.show(
                                    context: context,
                                    type: CoolAlertType.success,
                                    text: "$name to cart");
                              }
                            }
                          });
                        },
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
