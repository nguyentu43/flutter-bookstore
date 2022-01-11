import 'package:flutter/material.dart';

enum TypeBackground { left, center, right }

class Background extends StatelessWidget {
  final Widget child;
  final TypeBackground type;
  final double opacity;
  const Background(
      {Key? key,
      this.opacity = 1,
      required this.child,
      this.type = TypeBackground.center})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
        height: size.height,
        width: size.width,
        child: SafeArea(child: child),
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
                "assets/images/bg_${type.toString().substring(15)}.jpg"),
            colorFilter: ColorFilter.mode(
                Colors.white.withOpacity(opacity), BlendMode.dstATop),
          ),
        ));
  }
}
