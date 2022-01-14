import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final Widget child;
  final Color backgroundColor;
  final Color borderColor;
  final void Function()? onPressed;
  final double height;
  final double radius;

  const RoundedButton(
      {Key? key,
      required this.child,
      this.onPressed,
      this.height = 40,
      this.backgroundColor = Colors.blue,
      this.radius = 10.0,
      this.borderColor = Colors.transparent})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: ElevatedButton(
          onPressed: onPressed,
          child: child,
          style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all<Color>(backgroundColor),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                side: BorderSide(color: borderColor, width: 2.0),
                borderRadius: BorderRadius.circular(radius),
              )))),
    );
  }
}
