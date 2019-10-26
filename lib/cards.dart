import 'dart:math';
import 'package:flutter/material.dart';
import 'package:kingsCup/rules.dart';
import 'package:kingsCup/home.dart';
//import 'package:url_launcher/url_launcher.dart';

class Card extends StatelessWidget {
  Card({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Random Images',
      debugShowCheckedModeBanner: false,
      home: Cards(),
    );
  }
}

class Cards extends StatefulWidget {
  @override
  _CardsState createState() => _CardsState();
}

class _CardsState extends State<Cards> {
  var counterKing = [];

  void counterK(){
      counterKing.add(index);
      int size = counterKing.length;
      print("Counter King $counterKing");
      if (size == 4) {
        _showDialog();
        counterKing = [];
      }
  }
   void _showDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("QUARTO REI!"),
          content: Text("Você foi selecionado para beber o conteúdo do copo de reis."),
          titleTextStyle: TextStyle(
            color : Colors.red,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          actions: <Widget>[
            FlatButton(
              child: Text(
                "FECHAR",
                style: TextStyle(
                  color: Colors.red,
                ),
                ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
    });
  }
  int index = 1;
  Random random = Random();
  var _image = "images/cards/card(52).png"; 

  Widget imageprovider() {
    return Image.asset(
      _image,
      fit: BoxFit.fill,
      height: double.infinity,
      width: double.infinity,
    );
  }
  void _newImage() {
    setState(() {
      index = random.nextInt(52);
      _image = "images/cards/card($index).png";
      print(index);
      if (index >= 48 && index <= 51) {
        counterK();
      }

    });
    
  }
  // _launchURL(String url) async {
  //   String url1 = url;
  //   if (await canLaunch(url1)) {
  //     await launch(url1);
  //   } else {
  //     throw 'Could not launch $url1';
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
  // BARRA DE NAVEGAÇÃO SUPERIOR
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            iconSize: 40,
            color: Colors.red,
            tooltip: "Voltar",
            onPressed: (){
              Navigator.push(context,
                MaterialPageRoute(
                builder: (context) => Home()
                ),
              );
            }
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.help),
            iconSize: 40,
            color: Colors.red,
            alignment: Alignment.centerRight,
            onPressed: (){
              Navigator.push(context,
                MaterialPageRoute(
                  builder: (context) => Rules()
                ),
              );
                },
              ),
        ],
        title: Image.asset(
          "images/icons/appbar.jfif",
          width: 108,
        ),
        backgroundColor: Colors.white,
        centerTitle: true,  

      ),
      body: Container(
        margin: EdgeInsets.all(5),
        child: Center(
          child: GestureDetector(
            child: imageprovider(),
            onTap: _newImage,
              
          ),
        )
      ),
      backgroundColor: Colors.grey,
      //BARRA DE NAVEGAÇÃO INFERIOR
          // bottomNavigationBar: BottomNavigationBar(
          //   color: Colors.white,
          //   onPressed: (){
          // })       

          // showDialog(
                    
          //           context: context,
          //           builder: (BuildContext context) {
          //             return AlertDialog(
          //               title: Text("BEM-VINDO AO KINGS CUP"),
          //               content: Text("Toque na carta para ler as respectivas regras."),
          //               titleTextStyle: TextStyle(
          //                 color : Colors.red,
          //                 fontSize: 20,
          //                 fontWeight: FontWeight.bold,
          //               ),
          //               actions: <Widget>[
          //                 FlatButton(
          //                   child: Text(
          //                     "FECHAR",
          //                     style: TextStyle(
          //                       color: Colors.red,
          //                     ),
          //                     ),
          //                   onPressed: () {
          //                     Navigator.of(context).pop();
          //                   },
          //                 ),
          //               ],
          //             );
          //           }); 
    );
  }
}
