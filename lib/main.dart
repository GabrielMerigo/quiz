// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:quiz/widgets/question%C3%A1rio.dart';
import 'package:quiz/widgets/resposta.dart';
import 'package:quiz/widgets/resultado.dart';

main() => runApp(PerguntaApp());

class PerguntaAppState extends State<PerguntaApp> {
  var perguntaSelecionada = 0;
  final List<Map<String, Object>> _perguntas = const [
    {
      'texto': 'Qual é a sua cor favorita?',
      'respostas': [
        {'texto': 'Azul', 'nota': 10},
        {'texto': 'Preto', 'nota': 5},
        {'texto': 'Verde', 'nota': 7},
        {'texto': 'Branco', 'nota': 8}
      ]
    },
    {
      'texto': 'Qual é o seu animal favorito?',
      'respostas': [
        {'texto': 'Cachorro', 'nota': 4},
        {'texto': 'Gato', 'nota': 4},
        {'texto': 'Elefante', 'nota': 7},
      ]
    },
    {
      'texto': 'Qual é o seu time favorito?',
      'respostas': [
        {'texto': 'Binter', 'nota': 6},
        {'texto': 'GRÊMIO', 'nota': 9},
        {'texto': 'flamerda', 'nota': 3},
      ]
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
              ? Questionario(
                  perguntaSelecionada: perguntaSelecionada,
                  perguntas: _perguntas,
                  widgets: widgets,
                )
              : Resultado('Parabéns!!')),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  @override
  PerguntaAppState createState() {
    return PerguntaAppState();
  }
}
