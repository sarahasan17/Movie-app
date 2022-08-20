import 'package:flutter/material.dart';

const TextStyle textstyle1 =
    TextStyle(fontSize: 20, fontFamily: 'PTSerif-Regular.ttf');
const TextStyle textstyle2 =
    TextStyle(fontSize: 15, fontFamily: 'PTSerif-Regular.ttf');
const Icon icondata1 = Icon(
  Icons.star,
  color: Colors.yellow,
  size: 35.0,
);
const Icon icondata2 = Icon(
  Icons.star_half,
  color: Colors.yellow,
  size: 35.0,
);

class fun1 extends StatelessWidget {
  VoidCallback? onpressed;
  VoidCallback? onpressed1;
  VoidCallback? onpressed2;
  String text1;
  String text2;
  String text3;
  fun1(
      {this.onpressed,
      this.onpressed1,
      this.onpressed2,
      this.text1 = 'ab',
      this.text2 = 'ab',
      this.text3 = 'ab'});
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerRight,
      child: Column(
        children: [
          Container(
              alignment: Alignment.centerRight,
              child: Text('ALSO WATCH:                   ', style: textstyle2)),
          Container(
            alignment: Alignment.centerRight,
            child: GestureDetector(
                onTap: onpressed,
                child: Container(
                  width: 180,
                  height: 20,
                  margin: EdgeInsets.all(5.0),
                  color: Colors.grey[800],
                  child: Center(child: Text(text1, style: textstyle2)),
                )),
          ),
          Container(
            alignment: Alignment.centerRight,
            child: GestureDetector(
                onTap: onpressed1,
                child: Container(
                  width: 180,
                  height: 20,
                  margin: EdgeInsets.all(5.0),
                  color: Colors.grey[800],
                  child: Center(child: Text(text2, style: textstyle2)),
                )),
          ),
          Container(
            alignment: Alignment.centerRight,
            child: GestureDetector(
                onTap: onpressed2,
                child: Container(
                  width: 180,
                  height: 20,
                  margin: EdgeInsets.all(5.0),
                  color: Colors.grey[800],
                  child: Center(child: Text(text3, style: textstyle2)),
                )),
          ),
        ],
      ),
    );
  }
}
