import 'package:flutter/material.dart';
import 'package:flutter_bookstore/widgets/components/rounded_button.dart';

class TopBar extends StatelessWidget {
  final String headerText;
  const TopBar({Key? key, this.headerText = ""}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: const Icon(
                Icons.arrow_back,
              )),
        ),
        Text(
          headerText,
          style: Theme.of(context).textTheme.headline2,
          textAlign: TextAlign.center,
        ),
        const SizedBox(width: 30.0)
      ],
    ));
  }
}
