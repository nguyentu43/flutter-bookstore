import 'package:flutter/material.dart';

class ErrorBox extends StatelessWidget {
  final String text;
  const ErrorBox({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.error, size: 100.0, color: Colors.red),
        Text(text),
      ],
    );
  }
}
