import 'package:flutter/material.dart';
import 'package:MOVIES/constants.dart';
import 'package:MOVIES/review2.dart';
import 'package:MOVIES/review1.dart';
import 'package:MOVIES/review3.dart';

class Review4 extends StatefulWidget {
  const Review4({Key? key}) : super(key: key);

  @override
  State<Review4> createState() => _Review4State();
}

class _Review4State extends State<Review4> {
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
          Expanded(flex: 5, child: Image.asset('images/review4.png')),
          SizedBox(height: 20.0),
          Expanded(
              child: Row(
            children: [
              Text('RATINGS: ', style: textstyle1),
              icondata1,
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
                    'The complicated life of a modern-day first generation Indian American teenage girl, inspired by Mindy Kaling\'s own childhood.',
                    style: textstyle1,
                  ))),
          Expanded(
              child: Container(
                  alignment: Alignment.topLeft,
                  child: Text('Creators: Lang FisherMindy Kaling',
                      style: textstyle1))),
          Expanded(
              child: Container(
            alignment: Alignment.topLeft,
            child: Text(
                'Stars: Maitreyi RamakrishnanPoorna JagannathanDarren Barnet',
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
                      return Review1();
                    }));
                  });
                },
                text1: 'The babysitter\'s Club',
                text2: 'F.R.I.E.N.D.S',
                text3: 'he\'s all that'),
          ),
        ],
      ),
    );
  }
}
