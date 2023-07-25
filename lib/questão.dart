import 'package:flutter/material.dart';

class Questao extends StatelessWidget {
  final String text;

  Questao(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(text);
  }
}
