import 'package:flutter/material.dart';

class Questao extends StatelessWidget {
  final String text;

  Questao(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 26,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
