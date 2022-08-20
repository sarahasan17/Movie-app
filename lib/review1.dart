import 'package:flutter/material.dart';
import 'package:MOVIES/constants.dart';
import 'package:MOVIES/review2.dart';
import 'package:MOVIES/review3.dart';
import 'package:MOVIES/review4.dart';

class Review1 extends StatefulWidget {
  @override
  State<Review1> createState() => _Review1State();
}

class _Review1State extends State<Review1> {
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
          Expanded(flex: 5, child: Image.asset('images/review1.png')),
          Expanded(
              child: Row(
            children: [
              Text('RATINGS: ', style: textstyle1),
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
                    'A teenage girl sets out to give a nebbish classmate the ultimate high school makeover. An updated remake of the 1999 film, \'She\'s All That.',
                    style: textstyle1),
              )),
          Expanded(
              child: Container(
                  alignment: Alignment.topLeft,
                  child: Text('Director: Mark Waters', style: textstyle1))),
          Expanded(
              child: Container(
                  alignment: Alignment.topLeft,
                  child:
                      Text('Writer: R. Lee Fleming Jr.', style: textstyle1))),
          Expanded(
              child: Container(
            alignment: Alignment.topLeft,
            child: Text('Stars: Addison RaeTanner BuchananMadison Pettis',
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
                text1: 'The babysitter\'s Club',
                text2: 'F.R.I.E.N.D.S',
                text3: 'Never have I ever'),
          ),
        ],
      ),
    );
  }
}
