import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Devs extends StatefulWidget {
  Devs({Key key}) : super(key: key);

  @override
  _DevsState createState() => _DevsState();
}

class _DevsState extends State<Devs> {
  _launchURL(String url) async {
  String url1 = url;
  if (await canLaunch(url1)) {
    await launch(url1);
  } else {
    throw 'Could not launch $url1';
  }
}
  @override
  Widget build(BuildContext context) {
      
      return Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xffff6e7f), Color(0xffbfe9ff)]
              )
            )
          ),
          Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.red,
              title: Text('DESENVOLVEDORES',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold
              ),
              textAlign: TextAlign.center,),
            ),
            body: Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(30),
                  child: Column(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          _launchURL("https://github.com/gabrieloureiro");

                        },
                        child: CircleAvatar(
                          backgroundImage:
                              ExactAssetImage('images/icons/gabriel.jpeg'),
                          minRadius: 80,
                          maxRadius: 120,                     
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 30),
                      ),
                      GestureDetector(
                        onTap: () {
                          _launchURL("https://github.com/daviximenes");
      
                        },
                        child: CircleAvatar(
                          backgroundImage: ExactAssetImage('images/icons/eu.jpeg'),
                          minRadius: 80,
                          maxRadius: 120,
                        ),
                      ),
                    ],
                  ),
                )
                ],
            )
          )
          )
        ],
      );
  }
}
