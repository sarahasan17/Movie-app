import 'package:flutter/material.dart';

class moviename extends StatelessWidget {
  final Image? link;
  final VoidCallback? onPress;
  moviename({this.link, this.onPress});

  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10.0),
            child: link,
          ),
        ],
      ),
    );
  }
}
