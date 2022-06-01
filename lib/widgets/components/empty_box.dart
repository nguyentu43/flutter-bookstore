import 'package:flutter/material.dart';

class EmptyBox extends StatelessWidget {
  final String text;
  const EmptyBox({Key? key, this.text = "No data"}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.grid_off, size: 100.0, color: Colors.black),
        Text(text),
      ],
    );
  }
}
