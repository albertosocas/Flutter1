import 'package:flutter/material.dart';

class Lista extends StatelessWidget{
  final String texto;
  const Lista (this.texto, {Key key}) : super (key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Lista'),),
      body: Center(
        child: Text(texto),
      ),
    );
  }
}