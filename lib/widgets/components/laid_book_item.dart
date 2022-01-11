import 'package:flutter/material.dart';

class LaidBookItem extends StatelessWidget {
  const LaidBookItem({Key? key, this.right = 10.0}) : super(key: key);
  final double right;
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: EdgeInsets.only(right: right),
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
                Padding(
                  padding: const EdgeInsets.only(bottom: 15.0),
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.network(
                          'https://res.cloudinary.com/dqwgxcnh7/image/upload/q_auto:good/v1/store/cvk4ph51t2x1hunpb6sk',
                        ),
                      ),
                      Positioned(
                          bottom: 5.0,
                          right: 5.0,
                          child: Chip(
                            label: Text("9%",
                                style: textTheme.caption
                                    ?.merge(TextStyle(color: Colors.white))),
                            backgroundColor: Colors.orange,
                          ))
                    ],
                  ),
                )
              ],
            ),
          ),
          Text("Book", style: textTheme.headline6)
        ],
      ),
    );
  }
}
