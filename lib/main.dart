// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:quiz/widgets/question%C3%A1rio.dart';
import 'package:quiz/widgets/resposta.dart';

main() => runApp(PerguntaApp());

class PerguntaAppState extends State<PerguntaApp> {
  var perguntaSelecionada = 0;
  final List<Map<String, Object>> _perguntas = const [
    {
      'texto': 'Qual é a sua cor favorita?',
      'respostas': ['Azul', 'Preto', 'Verde', 'Branco']
    },
    {
      'texto': 'Qual é o seu animal favorito?',
      'respostas': ['Cachorro', 'Gato', 'Elefante']
    },
    {
      'texto': 'Qual é o seu time favorito?',
      'respostas': ['Binter', 'GRÊMIO', 'flamerda', 'GRÊMIO']
    },
  ];

  responder() {
    setState(() {
      perguntaSelecionada++;
    });
    print(perguntaSelecionada);
  }

  bool get temPerguntaSelecionada {
    return perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<String> respostas = temPerguntaSelecionada
        ? _perguntas[perguntaSelecionada].cast()['respostas']
        : [];

    List<Widget> widgets =
        respostas.map((text) => Resposta(text.toString(), responder)).toList();

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Perguntas'),
          ),
          body: temPerguntaSelecionada
              ? Questionario(_perguntas, perguntaSelecionada, widgets)
              : Center(
                  child: Text(
                    'Parabéns!',
                    style: TextStyle(fontSize: 30),
                  ),
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
