import 'package:flutter/material.dart';

class Resultado extends StatefulWidget {

   late String valor = "";
   Resultado(this.valor, {Key? key}) : super(key: key);  //construtorrrrrrrrrrr s2s2ss2s2s2s2

  @override
  _ResultadoState createState() => _ResultadoState();
}

class _ResultadoState extends State<Resultado> {
  @override
  Widget build(BuildContext context) {
   var caminhoImage = "image/moeda_cara.png";
   if(widget.valor == "cara"){
     caminhoImage = "image/moeda_cara.png";
   }else{
     caminhoImage = "image/moeda_coroa.png";
   }
    return Scaffold(
      backgroundColor: Color(0xff61bd86),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(caminhoImage),
            GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: Image.asset("image/botao_voltar.png"),
            ),

          ],
        ),
      ),
    );
  }
}
