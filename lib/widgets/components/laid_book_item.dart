import 'package:flutter/material.dart';
import 'package:flutter_bookstore/widgets/components/move_to_single_book_screen.dart';

class LaidBookItem extends StatelessWidget {
  const LaidBookItem(
      {Key? key,
      required this.image,
      required this.discount,
      required this.id,
      required this.slug,
      required this.name,
      this.right = 10.0})
      : super(key: key);
  final double right;
  final String image;
  final double discount;
  final String id;
  final String slug;
  final String name;
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Container(
      width: 180,
      margin: EdgeInsets.only(right: right),
      child: Column(
        children: [
          Expanded(
            child: Stack(
              alignment: AlignmentDirectional.bottomCenter,
              children: [
                Positioned(
                    child: Container(
                  height: 130,
                  width: 160,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.blue[100]),
                )),
                MoveToSingleBookScreen(
                  slug: slug,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 15.0),
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Image.network(
                            image,
                          ),
                        ),
                        if (discount > 0.0)
                          Positioned(
                              bottom: 5.0,
                              right: 5.0,
                              child: Chip(
                                label: Text(
                                    "${(discount * 100).toStringAsFixed(1)}%",
                                    style: textTheme.caption?.merge(
                                        const TextStyle(color: Colors.white))),
                                backgroundColor: Colors.orange,
                              ))
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Text(
              name,
              style: textTheme.headline6,
              overflow: TextOverflow.ellipsis,
            ),
          )
        ],
      ),
    );
  }
}
