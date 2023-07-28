import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final String message;
  final void Function() onReset;

  Resultado(this.message, this.onReset);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            message,
            style: TextStyle(fontSize: 30),
            textAlign: TextAlign.center,
          ),
        ),
        TextButton(
          onPressed: onReset,
          child: Text('Reiniciar?', style: TextStyle(fontSize: 18)),
        )
      ],
    );
  }
}
