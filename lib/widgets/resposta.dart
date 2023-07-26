import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String text; // Estou dizendo que esse será o valor final
  final void Function() onPressed;

  Resposta(this.text, this.onPressed, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            primary: Colors.blue, textStyle: TextStyle(color: Colors.white)),
        child: Text(text),
      ),
    );
  }
}
