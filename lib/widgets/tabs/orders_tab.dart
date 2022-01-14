import 'package:flutter/material.dart';

class OrdersTab extends StatelessWidget {
  const OrdersTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return ListView.separated(
        physics: BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          if (index == 0) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text("ORDER LIST", style: textTheme.headline2)],
              ),
            );
          }
          return Padding(
            padding: EdgeInsets.all(10.0),
            child: Row(
              children: [Text("order")],
            ),
          );
        },
        separatorBuilder: (context, index) {
          return Divider(
            height: 1.0,
          );
        },
        itemCount: 10);
  }
}
