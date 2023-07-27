import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final String message;

  Resultado(this.message);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        message,
        style: TextStyle(fontSize: 30),
      ),
    );
  }
}
