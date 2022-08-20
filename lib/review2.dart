import 'package:flutter/material.dart';
import 'package:MOVIES/constants.dart';
import 'package:MOVIES/review1.dart';
import 'package:MOVIES/review3.dart';
import 'package:MOVIES/review4.dart';

class Review2 extends StatefulWidget {
  const Review2({Key? key}) : super(key: key);

  @override
  State<Review2> createState() => _Review2State();
}

class _Review2State extends State<Review2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'THE MOVIE APP',
            style: TextStyle(fontSize: 25, color: Colors.white),
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(flex: 5, child: Image.asset('images/review2.png')),
          SizedBox(height: 20.0),
          Expanded(
              child: Row(
            children: [
              Text('RATINGS: ', style: textstyle1),
              icondata1,
              icondata1,
              icondata1,
              icondata2,
            ],
          )),
          Expanded(
              flex: 2,
              child: Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Based on the book series of the same name focusing on a group of young girls who start their own babysitting service.',
                    style: textstyle1,
                  ))),
          Expanded(
              child: Container(
                  alignment: Alignment.topLeft,
                  child: Text('Creator: Rachel Shukert', style: textstyle1))),
          Expanded(
              child: Container(
            alignment: Alignment.topLeft,
            child: Text('Stars: Sophie GraceMomona TamadaShay Rudolph',
                style: textstyle1),
          )),
          Expanded(
            flex: 2,
            child: fun1(
                onpressed: () {
                  setState(() {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Review1();
                    }));
                  });
                },
                onpressed1: () {
                  setState(() {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Review3();
                    }));
                  });
                },
                onpressed2: () {
                  setState(() {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Review4();
                    }));
                  });
                },
                text1: 'he\'s all that',
                text2: 'F.R.I.E.N.D.S',
                text3: 'Never have I ever'),
          ),
        ],
      ),
    );
  }
}
