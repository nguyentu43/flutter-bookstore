import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final double right;
  final String name;
  final String id;
  const CategoryItem(
      {Key? key, required this.name, required this.id, this.right = 10.0})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Container(
      margin: EdgeInsets.only(right: right),
      decoration: BoxDecoration(
          color: Colors.orange[400],
          borderRadius: BorderRadius.all(Radius.circular(10.0))),
      width: 160,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.book, color: Colors.white),
          SizedBox(
            height: 10,
          ),
          Text(name,
              style: textTheme.headline5?.merge(TextStyle(color: Colors.white)))
        ],
      ),
    );
  }
}
