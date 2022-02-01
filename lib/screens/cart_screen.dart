import 'package:cool_alert/cool_alert.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bookstore/graphql/mutations/addCartItem.req.gql.dart';
import 'package:flutter_bookstore/graphql/mutations/checkout.req.gql.dart';
import 'package:flutter_bookstore/graphql/mutations/removeCartItem.req.gql.dart';
import 'package:flutter_bookstore/graphql/queries/getPaymentCode.req.gql.dart';
import 'package:flutter_bookstore/graphql/queries/getUserInfo.data.gql.dart';
import 'package:flutter_bookstore/graphql/schema.schema.gql.dart';
import 'package:flutter_bookstore/helpers/app_service.dart';
import 'package:flutter_bookstore/models/bloc/auth_bloc.dart';
import 'package:flutter_bookstore/models/bloc/cart_bloc.dart';
import 'package:flutter_bookstore/routes.dart';
import 'package:flutter_bookstore/widgets/components/book_item.dart';
import 'package:flutter_bookstore/widgets/components/empty_box.dart';
import 'package:flutter_bookstore/widgets/components/rounded_button.dart';
import 'package:flutter_bookstore/widgets/components/top_bar.dart';
import 'package:flutter_spinbox/flutter_spinbox.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:form_validator/form_validator.dart';
import 'package:built_collection/src/list.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  void _updateItem(context, GGetUserInfoData_cart item, int quantity) {
    AppService()
        .client
        .request(GAddCartItemReq((b) => b
          ..vars.input.id = item.id
          ..vars.input.quantity = quantity))
        .listen((response) {
      if (!response.loading) {
        final cart = response.data!.cart!
            .map((item) => GGetUserInfoData_cart.fromJson(item.toJson()))
            .toList();
        _updateCart(cart, context);
      }
    });
  }

  void _deleteItem(context, GGetUserInfoData_cart item) {
    AppService()
        .client
        .request(GRemoveCartItemReq((b) => b..vars.productID = item.id))
        .listen((response) {
      if (!response.loading) {
        final cart = response.data!.cart!
            .map((item) => GGetUserInfoData_cart.fromJson(item.toJson()))
            .toList();
        _updateCart(cart, context);
      }
    });
  }

  void _updateCart(cart, context) {
    BlocProvider.of<CartBloc>(context).add(UpdateCartEvent(cart: cart));
  }

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    final cartBloc = BlocProvider.of<CartBloc>(context, listen: true);
    return Scaffold(body: SafeArea(
      child: Builder(
        builder: (context) {
          final cart = cartBloc.state;
    
          if (cart.isEmpty) {
            return Column(
              children: const [
                TopBar(),
                EmptyBox(text: "Empty cart"),
              ],
            );
          }
    
          return ListView.separated(
              itemBuilder: (context, index) {
                if (index == 0) {
                  return const Padding(
                      padding: EdgeInsets.symmetric(vertical: 10.0),
                      child: TopBar(
                        headerText: "CART",
                      ));
                }
    
                if (index == cart.length + 1) {
                  return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text("Total:\$ ${cartBloc.total.toStringAsFixed(2)}",
                            style: textTheme.headline2?.merge(
                                const TextStyle(fontWeight: FontWeight.bold))),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: RoundedButton(
                            child: Text("Checkout",
                                style: textTheme.button!.merge(
                                    const TextStyle(color: Colors.white))),
                            backgroundColor: Colors.green,
                            onPressed: () {
                              Scaffold.of(context).showBottomSheet((context) =>
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(
                                            width: 1.0, color: Colors.grey),
                                        borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(10.0),
                                            topRight: Radius.circular(10.0))),
                                    height: 380,
                                    width: double.infinity,
                                    child: const Padding(
                                      padding: EdgeInsets.all(10.0),
                                      child: _CheckoutForm(),
                                    ),
                                  ));
                            },
                          ),
                        )
                      ],
                    ),
                  );
                }
    
                final item = cart[index - 1];
    
                return Container(
                  height: 150,
                  margin: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      SizedBox(width: 20, child: Text(index.toString())),
                      SizedBox(
                        width: 120,
                        child: BookItem(
                            image: item!.images!.first.secure_url,
                            discount: item.discount,
                            id: item.id,
                            slug: item.slug),
                      ),
                      Expanded(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(item.name, style: textTheme.headline6),
                          Text(
                              "\$ ${(item.price * (1 - item.discount)).toStringAsFixed(2)} x ${item.quantity}",
                              style: textTheme.subtitle1),
                        ],
                      )),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(
                              width: 100,
                              child: SpinBox(
                                value: item.quantity.toDouble(),
                                min: 1,
                                onChanged: (value) {
                                  _updateItem(context, item, value.toInt());
                                },
                              )),
                          RoundedButton(
                            onPressed: () {
                              CoolAlert.show(
                                  context: context,
                                  type: CoolAlertType.confirm,
                                  text: "Do you want to delete?",
                                  onConfirmBtnTap: () {
                                    _deleteItem(context, item);
                                    Navigator.of(context).pop();
                                  });
                            },
                            child: const Icon(
                              Icons.delete,
                              color: Colors.white,
                            ),
                            backgroundColor: Colors.red,
                          )
                        ],
                      ),
                    ],
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return const Divider(
                  height: 1.0,
                );
              },
              itemCount: cart.length + 2);
        },
      ),
    ));
  }
}

class _CheckoutForm extends StatefulWidget {
  const _CheckoutForm({
    Key? key,
  }) : super(key: key);

  @override
  State<_CheckoutForm> createState() => _CheckoutFormState();
}

class _CheckoutFormState extends State<_CheckoutForm> {
  final _fullnameEditController = TextEditingController();
  final _addressEditController = TextEditingController();
  final _phoneEditController = TextEditingController();
  final _cardEditController = CardEditController();
  final _formState = GlobalKey<FormState>();

  String? errorCardFieldText;

  @override
  void dispose() {
    super.dispose();
    _fullnameEditController.dispose();
    _phoneEditController.dispose();
    _addressEditController.dispose();
    _cardEditController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Form(
      key: _formState,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
              validator: ValidationBuilder().required().build(),
              decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  label: Text("Fullname", style: textTheme.subtitle1))),
          TextFormField(
              validator: ValidationBuilder().required().phone().build(),
              decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  label: Text("Phone", style: textTheme.subtitle1))),
          TextFormField(
              validator: ValidationBuilder().required().build(),
              decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  label: Text("Address", style: textTheme.subtitle1))),
          CardField(
            controller: _cardEditController,
            decoration: InputDecoration(
                errorText: errorCardFieldText,
                border: const OutlineInputBorder()),
          ),
          Row(
            children: [
              RoundedButton(
                onPressed: () {
                  if (!_cardEditController.complete) {
                    setState(() {
                      errorCardFieldText = "This card is required";
                    });
                  } else {
                    setState(() {
                      errorCardFieldText = null;
                    });
                  }
                  if (_formState.currentState!.validate()) {
                    _processCheckout(context);
                  }
                },
                child: Text(
                  "Confirm",
                  style: textTheme.button
                      ?.merge(const TextStyle(color: Colors.white)),
                ),
                backgroundColor: Colors.green,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: RoundedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    "Cancel",
                    style: textTheme.button
                        ?.merge(const TextStyle(color: Colors.white)),
                  ),
                  backgroundColor: Colors.red,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  void _processCheckout(BuildContext context) {
    CoolAlert.show(context: context, type: CoolAlertType.loading);
    final cartBloc = BlocProvider.of<CartBloc>(context);
    final auth = BlocProvider.of<AuthBloc>(context).state;
    final items = cartBloc.state
        .map((item) =>
            GOrderItemData.fromJson(item!.toJson()) ?? GOrderItemData())
        .toList();
    AppService()
        .client
        .request(GGetPaymentCodeReq(
            (b) => b..vars.total = (cartBloc.total * 100).toInt()))
        .listen((response) async {
      if (!response.loading) {
        if (!response.hasErrors) {
          final billingDetails = BillingDetails(
              email: auth!.email,
              phone: _phoneEditController.text,
              name: _fullnameEditController.text);

          try {
            final paymentIntentResult = await Stripe.instance.confirmPayment(
                response.data!.code,
                PaymentMethodParams.card(billingDetails: billingDetails));

            if (!(paymentIntentResult.status ==
                PaymentIntentsStatus.Succeeded)) {
              Navigator.of(context).pop();
              CoolAlert.show(
                  context: context,
                  type: CoolAlertType.error,
                  text: "Payment error. Try again");
              return;
            }

            AppService()
                .client
                .request(GCheckoutReq((b) => b
                  ..vars.input.name = _fullnameEditController.text
                  ..vars.input.address = _addressEditController.text
                  ..vars.input.paymentID = paymentIntentResult.id
                  ..vars.input.phone = _phoneEditController.text
                  ..vars.input.total = cartBloc.total
                  ..vars.input.items = ListBuilder<GOrderItemData>(items)))
                .listen((checkoutResponse) {
              if (!checkoutResponse.loading) {
                if (!checkoutResponse.hasErrors) {
                  final order = checkoutResponse.data!.order;
                  Navigator.of(context).pop();
                  Navigator.of(context).pushReplacementNamed(MainRoute.home);
                  CoolAlert.show(
                      context: context,
                      type: CoolAlertType.info,
                      text:
                          "Order #${order.id} will be processed as soon as possible");
                  cartBloc.add(UpdateCartEvent(cart: []));
                } else {
                  Navigator.of(context).pop();
                  CoolAlert.show(
                      context: context,
                      type: CoolAlertType.error,
                      text: response.graphqlErrors!.first.message);
                }
              }
            });
          } on Exception catch (e) {
            Navigator.of(context).pop();
            CoolAlert.show(
                context: context, type: CoolAlertType.error, text: "$e");
          }
        } else {
          Navigator.of(context).pop();
          CoolAlert.show(context: context, type: CoolAlertType.error);
        }
      }
    });
  }
}
