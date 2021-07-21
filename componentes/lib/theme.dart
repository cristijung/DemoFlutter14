import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

void main() {
  runApp(ComThemes());
}

class ComThemes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appName = "Temas Personalizados";

    return MaterialApp(
        title: appName,
        //definir bilho e cores do app por meio da criação do tema para o widget
        theme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: Colors.amber,
          accentColor: Colors.black,

          //definir a fonte
          fontFamily: "Robotomono-bold",

          textTheme: TextTheme(
            headline2: TextStyle(fontSize: 70.0, fontWeight: FontWeight.w600),
            headline6: TextStyle(fontSize: 36.0, fontWeight: FontWeight.w300),
            bodyText2: TextStyle(fontSize: 14.0, fontFamily: "Raleway"),
          ),
        ),
        home: MeuTema(
          title: appName,
        ));
  }
}

class MeuTema extends StatelessWidget {
  final String title;
  MeuTema({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Container(
          color: Theme.of(context).accentColor,
          child: Text(
            "Textinho com cor de fundo",
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
      ),
      floatingActionButton: Theme(
        data: Theme.of(context).copyWith(
          colorScheme: Theme.of(context)
              .colorScheme
              .copyWith(secondary: Colors.amberAccent),
        ),
        child: FloatingActionButton(
          onPressed: null,
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
