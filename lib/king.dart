import 'package:flutter/material.dart';

class King extends StatefulWidget {
  King({Key key}) : super(key: key);
 
  @override
  _KingState createState() => _KingState();
}


void _kCupNull() {     
  setState((){
    counterKing = 0;
    Text(
      "Contador zerado! $counterKing Reis puxados"
    );
    print("Contador zerado! $counterKing Reis puxados");
  });
}

void _kCup(){
  setState(() {
    counterKing++;
    Text(
      "$counterKing Reis puxados."
    );
    print("$counterKing Reis puxados");
  });
}

class _KingState extends State<King> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}