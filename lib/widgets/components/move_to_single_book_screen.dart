import 'package:flutter/material.dart';
import 'package:flutter_bookstore/screens/single_book_screen.dart';

class MoveToSingleBookScreen extends StatelessWidget {
  final Widget child;
  final String slug;
  const MoveToSingleBookScreen(
      {Key? key, required this.slug, required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: child,
      onTap: () {
        Navigator.of(context).push(
            MaterialPageRoute(builder: (_) => SingleBookScreen(slug: slug)));
      },
    );
  }
}
