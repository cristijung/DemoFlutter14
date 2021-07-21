import 'package:flutter/material.dart';

void main() {
  runApp(ComOrientation());
}

class ComOrientation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = "Ajuste de Orientação";

    return MaterialApp(
      title: appTitle,
      home: OrientationList(title: appTitle),
    );
  }
}

class OrientationList extends StatelessWidget {
  final String title;
  OrientationList({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
          backgroundColor: Colors.amberAccent,
        ),
        body: OrientationBuilder(builder: (context, orientation) {
          //criar uma gridview em count. 2 colunas para orientação retrato
          //3 colunas para orientação paisagem
          return GridView.count(
            crossAxisCount: orientation == Orientation.portrait ? 2 : 3,
            //gerar 100 widgets que exibem os ítens na lista.
            children: List.generate(100, (index) {
              return Center(
                child: Text(
                  "Texto $index",
                  style: Theme.of(context).textTheme.headline4,
                ),
              );
            }),
          );
        }));
  }
}
