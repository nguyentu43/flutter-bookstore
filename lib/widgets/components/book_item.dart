import 'package:flutter/material.dart';
import 'package:flutter_bookstore/widgets/components/move_to_single_book_screen.dart';

class BookItem extends StatelessWidget {
  const BookItem(
      {Key? key,
      required this.image,
      required this.discount,
      required this.id,
      required this.slug,
      this.right = 10.0})
      : super(key: key);
  final double right;
  final String image;
  final double discount;
  final String id;
  final String slug;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return MoveToSingleBookScreen(
      slug: slug,
      child: Padding(
        padding: EdgeInsets.only(right: right),
        child: Stack(
          children: [
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.network(
                  image,
                ),
              ),
            ),
            if (discount > 0.0)
              Positioned(
                  bottom: 5.0,
                  right: 5.0,
                  child: Chip(
                    label: Text("${(discount * 100).toStringAsFixed(1)}%",
                        style: textTheme.caption
                            ?.merge(const TextStyle(color: Colors.white))),
                    backgroundColor: Colors.orange,
                  ))
          ],
        ),
      ),
    );
  }
}
