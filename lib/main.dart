import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int leftdice = 1;
  int rightdice = 1;

  void Diceface() {
    setState(() {
      leftdice = Random().nextInt(6) + 1;
      rightdice = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.yellow,
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            'DICE',
            style: TextStyle(
                color: Colors.black, fontFamily: 'Fattern', fontSize: 35),
          ),
        ),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.all(60),
              child: Text(
                'TAP ON THE \n   IMAGE',
                style: TextStyle(
                  fontFamily: 'Perma Marker',
                  fontSize: 40,
                  color: Colors.yellowAccent,
                ),
              ),
            ),
            Container(
              child: Center(
                child: Row(
                  children: [
                    Expanded(
                      child: TextButton(
                        onPressed: () {
                          Diceface();
                        },
                        child: Image.asset('images/dice$leftdice.png'),
                      ),
                    ),
                    Expanded(
                      child: TextButton(
                        child: Image.asset('images/dice$rightdice.png'),
                        onPressed: () {
                          Diceface();
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
