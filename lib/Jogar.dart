import 'package:flipcoin/Resultado.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import 'package:flipcoin/Jogar.dart';

class Jogar extends StatefulWidget {
  const Jogar({Key? key}) : super(key: key);

  @override
  _JogarState createState() => _JogarState();
}

class _JogarState extends State<Jogar> {
  void _exibirResultado() {
    var itens = ["cara", "coroa"];
    var num = Random().nextInt(itens.length);
    var resultado = itens[num];

    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Resultado(resultado)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff61bd86),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset("image/logo.png"),
            GestureDetector(
              onTap: _exibirResultado,
              child: Image.asset("image/botao_jogar.png"),
            ),
          ],
        ),
      ),
    );
  }
}
