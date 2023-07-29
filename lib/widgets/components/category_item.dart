import 'package:flutter/material.dart';
import 'package:flutter_bookstore/graphql/queries/getCategories.data.gql.dart';
import 'package:flutter_bookstore/widgets/components/move_to_category.dart';

class CategoryItem extends StatelessWidget {
  final double right;
  final GGetCategoriesData_categories category;
  const CategoryItem({Key? key, required this.category, this.right = 10.0})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return MoveToCategory(
      category: category,
      child: Container(
        padding: const EdgeInsets.all(5),
        margin: EdgeInsets.only(right: right),
        decoration: BoxDecoration(
            color: Colors.orange[400],
            borderRadius: const BorderRadius.all(Radius.circular(10.0))),
        width: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.book, color: Colors.white),
            const SizedBox(
              height: 10,
            ),
            Text(category.name,
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: textTheme.headline5
                    ?.merge(const TextStyle(color: Colors.white)))
          ],
        ),
      ),
    );
  }
}
