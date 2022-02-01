import 'package:cool_alert/cool_alert.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bookstore/graphql/mutations/addRating.req.gql.dart';
import 'package:flutter_bookstore/graphql/mutations/updateRating.req.gql.dart';
import 'package:flutter_bookstore/graphql/queries/getProduct.data.gql.dart';
import 'package:flutter_bookstore/helpers/app_service.dart';
import 'package:flutter_bookstore/widgets/components/rounded_button.dart';
import 'package:flutter_bookstore/widgets/components/top_bar.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:form_validator/form_validator.dart';

class EditRatingScreen extends StatefulWidget {
  String productID;
  String userID;
  GGetProductData_product_ratings? rating;
  void Function() onSubmit;
  EditRatingScreen(
      {Key? key,
      required this.productID,
      required this.userID,
      this.rating,
      required this.onSubmit})
      : super(key: key);

  @override
  State<EditRatingScreen> createState() => _EditRatingScreenState();
}

class _EditRatingScreenState extends State<EditRatingScreen> {
  int _rating = 5;
  final _formState = GlobalKey<FormState>();
  final _commentTextController = TextEditingController();
  final _titleController = TextEditingController();

  @override
  void initState() {
    super.initState();
    setState(() {
      if (widget.rating != null) {
        _rating = widget.rating!.rate;
        _commentTextController.text = widget.rating!.comment;
        _titleController.text = widget.rating!.title;
      }
    });
  }

  @override
  void dispose() {
    _titleController.dispose();
    _commentTextController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Scaffold(
        body: SafeArea(
          child: ListView(
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              children: [
            const TopBar(
              headerText: "Rating",
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
          child: RatingBar.builder(
            tapOnlyMode: true,
            initialRating: _rating.toDouble(),
            minRating: 1,
            direction: Axis.horizontal,
            allowHalfRating: true,
            itemCount: 5,
            itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
            itemBuilder: (context, _) => const Icon(
              Icons.star,
              color: Colors.amber,
            ),
            onRatingUpdate: (rating) {
              _rating = rating.toInt();
            },
          ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Form(
            key: _formState,
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), label: Text("Title")),
                  controller: _titleController,
                  validator: ValidationBuilder().required().build(),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: TextFormField(
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(), label: Text("Comment")),
                    controller: _commentTextController,
                    validator: ValidationBuilder().required().build(),
                  ),
                ),
              ],
            )),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),
              child: RoundedButton(
            onPressed: () {
              _processSubmit(context);
            },
            child: Text(
              "Submit",
              style: textTheme.button,
            )),
            )
              ],
            ),
        ));
  }

  void _processSubmit(BuildContext context) {
    if (_formState.currentState!.validate()) {
      var req;
      if (widget.rating == null) {
        req = GAddRatingReq((b) => b
          ..vars.productID = widget.productID
          ..vars.userID = widget.userID
          ..vars.input.title = _titleController.text
          ..vars.input.rate = _rating
          ..vars.input.comment = _commentTextController.text);
      } else {
        req = GUpdateRatingReq((b) => b
          ..vars.id = widget.rating!.id
          ..vars.userID = widget.userID
          ..vars.input.title = _titleController.text
          ..vars.input.rate = _rating
          ..vars.input.comment = _commentTextController.text);
      }

      AppService().client.request(req).listen((response) {
        if (!response.loading) {
          if (!response.hasErrors) {
            Navigator.of(context).pop();
            widget.onSubmit();
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
}
