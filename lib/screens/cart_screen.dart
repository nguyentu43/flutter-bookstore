import 'package:flutter/material.dart';
import 'package:flutter_bookstore/widgets/components/book_item.dart';
import 'package:flutter_bookstore/widgets/components/rounded_button.dart';
import 'package:flutter_spinbox/flutter_spinbox.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:form_validator/form_validator.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: ListView.separated(
          itemBuilder: (context, index) {
            if (index == 0) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Text("CART", style: textTheme.headline2)],
                ),
              );
            }

            if (index == 9) {
              return Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text("Total:\$ 99.99",
                        style: textTheme.headline2
                            ?.merge(TextStyle(fontWeight: FontWeight.bold))),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: RoundedButton(
                        child: Text("Checkout"),
                        backgroundColor: Colors.green,
                        onPressed: () {
                          Scaffold.of(context)
                              .showBottomSheet((context) => Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(
                                            width: 1.0, color: Colors.grey),
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(10.0),
                                            topRight: Radius.circular(10.0))),
                                    height: 380,
                                    width: double.infinity,
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
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

            return Container(
              height: 150,
              margin: EdgeInsets.all(10.0),
              child: Row(
                children: [
                  SizedBox(width: 40, child: Text(index.toString())),
                  // BookItem(),
                  Expanded(child: Text("Book", style: textTheme.headline6)),
                  SizedBox(width: 100, child: SpinBox()),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: RoundedButton(
                      child: Icon(
                        Icons.delete,
                        color: Colors.white,
                      ),
                      backgroundColor: Colors.red,
                    ),
                  )
                ],
              ),
            );
          },
          separatorBuilder: (context, index) {
            return Divider(
              height: 1.0,
            );
          },
          itemCount: 10),
    );
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

  String? errorCardFieldText = null;

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
                  border: OutlineInputBorder(),
                  label: Text("Fullname", style: textTheme.subtitle1))),
          TextFormField(
              validator: ValidationBuilder().required().phone().build(),
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text("Phone", style: textTheme.subtitle1))),
          TextFormField(
              validator: ValidationBuilder().required().build(),
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text("Address", style: textTheme.subtitle1))),
          CardField(
            controller: _cardEditController,
            decoration: InputDecoration(
                errorText: errorCardFieldText, border: OutlineInputBorder()),
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
                  if (_formState.currentState!.validate()) {}
                },
                child: Text(
                  "Confirm",
                  style:
                      textTheme.button?.merge(TextStyle(color: Colors.white)),
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
                    style:
                        textTheme.button?.merge(TextStyle(color: Colors.white)),
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
}
