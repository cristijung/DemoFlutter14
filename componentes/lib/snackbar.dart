import 'dart:html';
import 'package:flutter/material.dart';

void main() => runApp(ComSnack());

class ComSnack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Componente SnackBar - Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text("SnackBar Mensagem"),
          backgroundColor: Colors.blueAccent,
        ),
        body: SnackBarPage(),
      ),
    );
  }
}

class SnackBarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          final snackBar = SnackBar(
            content: Text("Oi, eu sou uma SnackBar =D"),
            action: SnackBarAction(label: "Desfazer", onPressed: () {}),
          );

          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        child: Text("Mostrar SnackBar"),
      ),
    );
  }
}
