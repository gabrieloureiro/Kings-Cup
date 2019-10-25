import 'package:flutter/material.dart';
 
class Rules extends StatefulWidget {
  Rules({Key key}) : super(key: key);
 
  @override
  _RulesState createState() => _RulesState();
}
 
class _RulesState extends State<Rules> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

//CORPO DA APPBAR
      appBar: AppBar(    
      title: Row(
        children: <Widget>[
          Text("REGRAS",
            style: TextStyle(
              fontSize: 20, 
              fontWeight: FontWeight.bold,
              color: Colors.white,
            )
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 140),
          ), 
          Image.asset(
            "images/icons/back_cards-07.png",
            width: 106,
            ),
        ],
      ),
        backgroundColor: Colors.red,
        centerTitle: true,
      ),

//CORPO DA TELA DE REGRAS

      body: Container(
        color: Colors.grey,
        alignment: Alignment.topLeft,
        child: GridView.count(
          crossAxisCount: 3,
            children: <Widget>[
              IconButton(
                icon: Image.asset(
                  "images/cards/card(37).png",
                  fit: BoxFit.cover,
                ),
                iconSize: 120,
                onPressed: (){
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text("ÀS: CORJA"),
                        content: Text("Todos os participantes devem beber."),
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
                },
              ),
              IconButton(
                icon: Image.asset(
                  "images/cards/card(0).png",
                  fit: BoxFit.cover,
                ),
                iconSize: 120,
                onPressed: (){
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text("2: INDICADOR"),
                        content: Text("Escolha um participante para beber."),
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
                },
              ),
              IconButton(
                icon: Image.asset(
                  "images/cards/card(5).png",
                  fit: BoxFit.cover,
                ),
                iconSize: 120,
                onPressed: (){
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text("3: AZARADO"),
                        content: Text("Você deve beber."),
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
                },
              ),
              IconButton(
                icon: Image.asset(
                  "images/cards/card(8).png",
                  fit: BoxFit.cover,
                ),
                iconSize: 120,
                onPressed: (){
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text("4: PALM TABLE"),
                        content: Text("Todos os participantes devem bater na mesa(com a palma das mãos). O último a realizar a ação deve beber."),
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
                },
              ),
              IconButton(
                icon: Image.asset(
                  "images/cards/card(13).png",
                  fit: BoxFit.cover,
                ),
                iconSize: 120,
                onPressed: (){
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text("5: ALPHA's"),
                        content: Text("Todos os homens devem beber."),
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
                },
              ),
              IconButton(
                icon: Image.asset(
                  "images/cards/card(16).png",
                  fit: BoxFit.cover,
                ),
                iconSize: 120,
                onPressed: (){
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text("6: LADY's"),
                        content: Text("Todos as mulheres devem beber."),
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
                },
              ),
              IconButton(
                icon: Image.asset(
                  "images/cards/card(21).png",
                  fit: BoxFit.cover,
                ),
                iconSize: 120,
                onPressed: (){
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text("7: HANDS UP"),
                        content: Text("Todos os participantes devem levantar as mãos para cima. O último a realizar a ação deve beber."),
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
                },
              ),
              IconButton(
                icon: Image.asset(
                  "images/cards/card(24).png",
                  fit: BoxFit.cover,
                ),
                iconSize: 120,
                onPressed: (){
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text("8: GÊMEOS"),
                        content: Text("Você deve escolher um participante para beber, simultaneamente, sempre que você beber. A regra permanece até a carta 8 ser puxada novamente."),
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
                },
              ),
              IconButton(
                icon: Image.asset(
                  "images/cards/card(29).png",
                  fit: BoxFit.cover,
                ),
                iconSize: 120,
                onPressed: (){
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text("9: ADEDONHA"),
                        content: Text("Você deve fazer uma rodada de Adedonha, por exemplo, ''Lugares com a letra L''. O primeiro participante que errar/pular deve beber."),
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
                },
              ),
              IconButton(
                icon: Image.asset(
                  "images/cards/card(32).png",
                  fit: BoxFit.cover,
                ),
                iconSize: 120,
                onPressed: (){
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text("10: EU NUNCA 3X"),
                        content: Text("Todos os participantes devem levantar três dedos de uma mão e jogar ''EU NUNCA''. O primeiro a baixar todos os dedos deve beber."),
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
                },
              ),
              IconButton(
                icon: Image.asset(
                  "images/cards/card(41).png",
                  fit: BoxFit.cover,
                ),
                iconSize: 120,
                onPressed: (){
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text("J: DITADOR"),
                        content: Text("Você deve criar uma nova regra. A regra permanece até a carta J ser puxada novamente."),
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
                },
              ),
              IconButton(
                icon: Image.asset(
                  "images/cards/card(44).png",
                  fit: BoxFit.cover,
                ),
                iconSize: 120,
                onPressed: (){
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text("Q: QUESTIONADOR"),
                        content: Text("Você deve, discretamente, realizar perguntas. Caso algum participante responda a pergunta, ele deve beber."),
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
                },
              ),
              IconButton(
                icon: Image.asset(
                  "images/cards/card(49).png",
                  fit: BoxFit.cover,
                ),
                iconSize: 120,
                onPressed: (){
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text("K: O CÉU E O INFERNO"),
                        content: Text("A carta K é especial, pois possui um efeito distinto dependendo do contador. Caso você puxe o K e o contador for menor que 4, você deve despejar um pouco da sua bebida em um copo distinto. O participante que puxar o quarto K deve beber o conteúdo do copo. [ATENÇÃO]: Não tente escapar! O aplicativo notificará quando o quarto K for puxado."),
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
                },
              ),
              Text(
              "",
              ),
              IconButton(
                icon: Icon(Icons.developer_mode),
                color: Colors.red,
                iconSize: 40,
                alignment: Alignment.bottomCenter,
                onPressed: (){
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text("DESENVOLVEDORES:"),
                        content: Text("Gabriel Loureiro - Developer Flutter\nDavi Ximenes - Developer Flutter"),
                        contentTextStyle: TextStyle(
                          color : Colors.red,
                          fontSize: 15,
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
                },
              ),
            ],
        )
      ),
    );
  }
}