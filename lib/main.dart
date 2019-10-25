import 'package:flutter/material.dart';
import 'package:kingsCup/cards.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(Home());

class Home extends StatelessWidget {
  Home({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Random Images',
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

_launchURL(String url) async {
  String url1 = url;
  if (await canLaunch(url1)) {
    await launch(url1);
  } else {
    throw 'Could not launch $url1';
  }
}

class _HomeState extends State<HomeScreen> {
@override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(
          "images/icons/casinobg.jpg",
          fit: BoxFit.cover,
          height: double.maxFinite,
          width: double.maxFinite, 
          alignment: Alignment.center,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            title: Text(
              "KING'S CUP",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color : Colors.white,
              ),
            ),
            centerTitle: true,
          ),
          body: Container(
            child: Row(
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.developer_mode),
                  color: Colors.red,
                  iconSize: 100,
                  tooltip: "Conheça os desenvolvedores",
                  alignment: Alignment.centerRight,
                  onPressed: () {
                    _launchURL("http://github.com/gabrieloureiro");
                  },
                ),
                IconButton(
                  icon: Icon(Icons.share),
                  color: Colors.red,
                  iconSize: 100,
                  tooltip: "Compartilhe o aplicativo",
                  alignment: Alignment.centerRight,
                  onPressed: () {
                    
                  },
                ),
                IconButton(
                  icon: Icon(Icons.play_arrow),
                  color: Colors.red,
                  iconSize: 100,
                  tooltip: "JOGAR",
                  alignment: Alignment.centerRight,
                  onPressed: () {
                    Navigator.push(context,
                      MaterialPageRoute(
                      builder: (context) => Cards()
                      ),
                    );
                  },
                )
              ],
            ) 
          ),
          //BARRA DE NAVEGAÇÃO INFERIOR
          // bottomNavigationBar: BottomNavigationBar(
          //   color: Colors.white,
          //   onPressed: (){
          // })       

      )
    ],);
  }
}