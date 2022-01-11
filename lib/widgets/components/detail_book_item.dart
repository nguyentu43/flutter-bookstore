import 'package:flutter/material.dart';
import 'package:flutter_bookstore/widgets/components/rounded_button.dart';

class DetailBookItem extends StatelessWidget {
  const DetailBookItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return SizedBox(
      height: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.network(
                "https://res.cloudinary.com/dqwgxcnh7/image/upload/q_auto:good/v1/store/cvk4ph51t2x1hunpb6sk",
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Book", style: textTheme.headline5),
                Text("Author", style: textTheme.subtitle1),
                Text("\$ 10.99", style: textTheme.headline5),
                Spacer(),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: RoundedButton(
                        child: Icon(Icons.add_shopping_cart),
                        onPressed: () {},
                      ),
                    ),
                    RoundedButton(
                      backgroundColor: Colors.pink,
                      child: Icon(Icons.favorite_outline),
                      onPressed: () {},
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}