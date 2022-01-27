import 'package:flutter/material.dart';
import 'package:flutter_bookstore/graphql/queries/getCategories.data.gql.dart';
import 'package:flutter_bookstore/screens/search_screen.dart';

class MoveToCategory extends StatelessWidget {
  final Widget child;
  final GGetCategoriesData_categories? category;
  const MoveToCategory({Key? key, this.category, required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: child,
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (_) => SearchScreen(
                  category: category,
                )));
      },
    );
  }
}
