import 'dart:math';
import 'package:flutter/material.dart';
import 'package:kingsCup/rules.dart';

void main() => runApp(RandomImg());

class RandomImg extends StatelessWidget {
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
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 1;
  Random random = Random();
  var _image = "images/cards/card (0).png";
  int counterKing = 0;

  Widget imageprovider() {
    return Image.asset(
      _image,
      fit: BoxFit.fill,
      height: double.infinity,
      width: double.infinity,

    );
    
  }
  void _newImage() {     
    setState((){
      _image = "images/cards/card ($index).png";
      index = random.nextInt(52);      
    });
  }


  // void _kCupNull() {     
  //   setState((){
  //     counterKing = 0;
  //     Text(
  //       "Contador zerado! $counterKing Reis puxados"
  //     );
  //     print("Contador zerado! $counterKing Reis puxados");
  // });
  // }

  // void _kCup(){
  //   setState(() {
  //       counterKing++;
  //       Text(
  //         "$counterKing Reis puxados."
  //       );
  //       print("$counterKing Reis puxados");
  //   });
  // }
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
  // BARRA DE NAVEGAÇÃO SUPERIOR
      appBar: AppBar(
        leading: Icon(
            Icons.local_drink,
            size: 40,
            color: Colors.grey,
        ),

            //alignment: Alignment.centerRight,
      // )
      //       onPressed: (){
      //         // RETORNA A LISTA COM TODOS OS REIS PUXADOS
      //          if(index >= 49){
      //           _kCup();
      //         }
      //         if(counterKing >= 4){
      //           _kCupNull();
      //         }
      //       }
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
                )
              );
            },

          )
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
    );
  }
}




