// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

import './questão.dart';

main() => runApp(PerguntaApp());

class PerguntaAppState extends State<PerguntaApp> {
  var perguntaSelecionada = 0;

  responder() {
    setState(() {
      perguntaSelecionada++;
    });
    print('Pergunta respondida!');
  }

  @override
  Widget build(BuildContext context) {
    const perguntas = [
      'Qual é a sua cor favorita?',
      'Qual é o seu animal favorito?'
    ];

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Perguntas'),
          ),
          body: Column(
            children: [
              Questao(perguntas[perguntaSelecionada]),
              ElevatedButton(
                onPressed: responder,
                child: Text('Resposta 1'),
              ),
              ElevatedButton(
                onPressed: responder,
                child: Text('Resposta 2'),
              ),
              ElevatedButton(
                onPressed: responder,
                child: Text('Resposta 3'),
              )
            ],
          )),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  @override
  PerguntaAppState createState() {
    return PerguntaAppState();
  }
}
