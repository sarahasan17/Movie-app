import 'package:flutter/material.dart';
import 'package:MOVIES/constants.dart';
import 'package:MOVIES/review2.dart';
import 'package:MOVIES/review1.dart';
import 'package:MOVIES/review4.dart';

class Review3 extends StatefulWidget {
  State<Review3> createState() => _Review3State();
}

class _Review3State extends State<Review3> {
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
          Expanded(flex: 5, child: Image.asset('images/review3.png')),
          SizedBox(height: 20.0),
          Expanded(
              child: Row(
            children: [
              Text('RATINGS: ', style: textstyle1),
              icondata1,
              icondata1,
              icondata1,
              icondata1,
            ],
          )),
          Expanded(
              flex: 2,
              child: Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Follows the personal and professional lives of six twenty to thirty-something-year-old friends living in Manhattan.',
                    style: textstyle1,
                  ))),
          Expanded(
              child: Container(
                  alignment: Alignment.topLeft,
                  child: Text('Creators: David CraneMarta Kauffman',
                      style: textstyle1))),
          Expanded(
              child: Container(
            alignment: Alignment.topLeft,
            child: Text('Stars: Jennifer AnistonCourteney CoxLisa Kudrow',
                style: textstyle1),
          )),
          Expanded(
            flex: 2,
            child: fun1(
                onpressed: () {
                  setState(() {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Review2();
                    }));
                  });
                },
                onpressed1: () {
                  setState(() {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Review1();
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
                text1: 'The babysitter\'s Club',
                text2: 'he\'s all that',
                text3: 'Never have I ever'),
          ),
        ],
      ),
    );
  }
}
