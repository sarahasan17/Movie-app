import 'package:flutter/material.dart';
import 'package:MOVIES/moviename.dart';
import 'package:MOVIES/review1.dart';
import 'package:MOVIES/review4.dart';
import 'package:MOVIES/review2.dart';
import 'package:MOVIES/review3.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(backgroundColor: Color(0xFF141414)),
        scaffoldBackgroundColor: Color(0xFF0F0F1E)),
    home: App(),
  ));
}

class App extends StatefulWidget {
  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
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
          Expanded(
            child: Container(
              margin: EdgeInsets.all(10.0),
              alignment: Alignment.centerLeft,
              child: Text('MOVIES FOR YOU',
                  style: TextStyle(fontSize: 20), textAlign: TextAlign.left),
            ),
          ),
          Expanded(
              flex: 4,
              child: Row(
                children: [
                  Expanded(
                    child: moviename(
                        link: Image.asset('images/movie1.png'),
                        onPress: () {
                          setState(() {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return Review1();
                            }));
                          });
                        }),
                  ),
                  Expanded(
                      child: moviename(
                          link: Image.asset('images/movie2.png'),
                          onPress: () {
                            setState(() {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return Review2();
                              }));
                            });
                          })),
                ],
              )),
          Expanded(
            flex: 4,
            child: Row(
              children: [
                Expanded(
                  child: moviename(
                      link: Image.asset('images/movie3.png'),
                      onPress: () {
                        setState(() {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return Review3();
                          }));
                        });
                      }),
                ),
                Expanded(
                  child: moviename(
                      link: Image.asset('images/movie4.png'),
                      onPress: () {
                        setState(() {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return Review4();
                          }));
                        });
                      }),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
