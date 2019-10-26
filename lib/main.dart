import 'package:flutter/material.dart';
import 'dart:async';
import 'package:kingsCup/home.dart';

void main() {
  runApp(MaterialApp(
    home: SplashScreen(),
    debugShowCheckedModeBanner: false
  ));
}

class SplashScreen extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return SplashScreenState();
  }
}

class SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();

    loadData();
  }

  Future<Timer> loadData() async {
    return new Timer(Duration(seconds: 5), onDoneLoading);
  }

  onDoneLoading() async {
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => Home()));
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[ 
        Scaffold(
          backgroundColor: Colors.white,
        ),
        Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.red, Colors.white])),
          alignment: Alignment.topCenter,
          child: Image.asset(
            "images/icons/back_cards-07.png",
            fit: BoxFit.fill,
          ),
          padding: EdgeInsets.only(top:100),
        ),
        Container(
          alignment: Alignment.topCenter,
          child: CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
          ),
          padding: EdgeInsets.only(top:310),
        ),
        Container(
          alignment: Alignment.bottomCenter,
          child: Image.asset(
            "images/icons/kingsCup-icon.png",
            fit: BoxFit.fill,
          )
        ),
      ],
    );
  }
}