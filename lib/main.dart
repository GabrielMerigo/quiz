// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:quiz/widgets/question%C3%A1rio.dart';
import 'package:quiz/widgets/resposta.dart';
import 'package:quiz/widgets/resultado.dart';

main() => runApp(PerguntaApp());

class PerguntaAppState extends State<PerguntaApp> {
  var perguntaSelecionada = 0;
  var pontos = 0;

  final List<Map<String, Object>> _perguntas = const [
    {
      'texto': 'Qual é a sua cor favorita?',
      'respostas': [
        {'texto': 'Azul', 'pontuacao': 10},
        {'texto': 'Preto', 'pontuacao': 5},
        {'texto': 'Verde', 'pontuacao': 7},
        {'texto': 'Branco', 'pontuacao': 8}
      ]
    },
    {
      'texto': 'Qual é o seu animal favorito?',
      'respostas': [
        {'texto': 'Cachorro', 'pontuacao': 4},
        {'texto': 'Gato', 'pontuacao': 4},
        {'texto': 'Elefante', 'pontuacao': 7},
      ]
    },
    {
      'texto': 'Qual é o seu time favorito?',
      'respostas': [
        {'texto': 'Binter', 'pontuacao': 6},
        {'texto': 'GRÊMIO', 'pontuacao': 9},
        {'texto': 'flamerda', 'pontuacao': 3},
      ]
    },
  ];

  responder(int pontuacao) {
    setState(() {
      perguntaSelecionada++;
      pontos += pontuacao;
    });
  }

  onReset() {
    setState(() {
      perguntaSelecionada = 0;
      pontos = 0;
    });
  }

  bool get temPerguntaSelecionada {
    return perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> respostas = temPerguntaSelecionada
        ? _perguntas[perguntaSelecionada].cast()['respostas']
        : [];

    List<Widget> widgets = respostas
        .map((resp) => Resposta(
              resp.cast()['texto'],
              () {
                responder(resp.cast()['pontuacao']);
              },
            ))
        .toList();

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
            : Resultado("Parabéns!! Seus pontos foram $pontos!", onReset),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  @override
  PerguntaAppState createState() {
    return PerguntaAppState();
  }
}
