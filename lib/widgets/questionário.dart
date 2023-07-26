import 'package:flutter/widgets.dart';
import 'package:quiz/widgets/quest%C3%A3o.dart';

class Questionario extends StatelessWidget {
  final int perguntaSelecionada;
  final List<Map<String, Object>> perguntas;
  final List<Widget> widgets;

  Questionario(this.perguntas, this.perguntaSelecionada, this.widgets,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Questao(perguntas[perguntaSelecionada]['texto'].toString()),
        ...widgets
      ],
    );
  }
}
