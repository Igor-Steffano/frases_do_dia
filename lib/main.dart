import 'package:flutter/material.dart';
import 'dart:math';

void main(){
  runApp(MaterialApp(
home: Home() ,
debugShowCheckedModeBanner: false,
  ));

}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

var _frases = [
  "Os problemas são oportunidades para se mostrar o que sabe",
  "Nossos fracassos, às vezes, são mais frutíferos do que os êxitos",
  "Tente de novo. Fracasse de novo. Mas fracasse melhor",
  "É costume de um tolo, quando erra, queixar-se dos outros. É costume de um sábio queixar-se de si mesmo",
  "Você esta certo! Igor Stéffano",
  "Seja mais profissional... Preto" 
];

  var _fraseGerada = "Clique abaixo para gerar uma frase!";

  void _gerarFrase(){
    var numeroSorteado = Random().nextInt(_frases.length);
    setState(() {
      _fraseGerada = _frases [numeroSorteado];
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(
        title: Text("Frases do dia"),
        backgroundColor: Colors.green,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        width: double.infinity, //ocupa 100% da tela
        /*decoration: BoxDecoration(
          border: Border.all(width: 3, color: Colors.amber),
      ),*/
      child:Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.asset("images/logo.png"),
          Text(
            _fraseGerada,
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontSize: 17,
              fontStyle: FontStyle.italic,
              color: Colors.black
            ),
          ),
          RaisedButton(
            child: Text(
              "Nova Frase",
              style: TextStyle(
                fontSize: 25,
                color: Colors.white,
                fontWeight: FontWeight.bold
              ),
              ),
            color: Colors.green,
            onPressed: _gerarFrase,
          )
        ],
        ) ,
      ),
    );
  }
}

