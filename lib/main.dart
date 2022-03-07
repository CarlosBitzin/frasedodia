import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  var _frase = [
    "Levanta, sacode a poeira, dá a volta por cima.",
    "Respire fundo e fique atento às surpresas deliciosas que a vida preparou para você!",
    "Nem todos os dias são bons, mas há algo bom em cada dia.",
    "Um passo de cada vez. Até meio passo serve. Siga firme, não há motivo para ter pressa.",
    "Suba o primeiro degrau com fé. Não é necessário que você veja toda a escada, apenas dê o primeiro passo",
    "Toda manhã você tem duas escolhas: continuar dormindo com seus sonhos ou acordar e persegui-los!",
    "A cada novo dia, a cada momento, temos a nossa disposição a maravilhosa possibilidade do encontro, que traz em si infinitas oportunidades. Precisamos apenas estar atentos.",
    "Dentro de você, há uma luz muito forte! Acredite nela e deixe que ela ilumine o seu dia.",
    "As pessoas mais felizes não têm as melhores coisas. Elas sabem fazer o melhor das oportunidades que aparecem em seus caminhos.",
  ];

  var _fraseGerada = "clique abaixo para gerar uma nova frase!";

  void _gerarFrase(){

    var numeroSorteado = Random().nextInt( _frase.length );
    print(numeroSorteado);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frases do Dia"),
        backgroundColor: Colors.green,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("image/logo.png"),
            Text(
              _fraseGerada,
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 20,
                fontStyle: FontStyle.italic,
                color: Colors.black,
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.green,
               ),
              onPressed: _gerarFrase,
               child: Text(
                "Nova Frase",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
               ),
               
            ),
          ],
        ),
      ),
    );
  }
}