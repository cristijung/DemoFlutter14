import 'package:flutter/material.dart';

void main() {
  runApp(ComLayout());
}

class ComLayout extends StatelessWidget {
  const ComLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.image)),
                Tab(icon: Icon(Icons.collections)),
                Tab(icon: Icon(Icons.palette)),
                Tab(icon: Icon(Icons.photo)),
              ],
            ),
            title: Text('Artes do Mundo'),
            backgroundColor: Colors.pinkAccent,
          ),
          body: Container(
            child: TabBarView(
              children: <Widget>[
                Image.asset("imgs/monalisa.jpg"),
                Image.asset("imgs/obeijo.jpg"),
                Image.asset("imgs/picasso.jpg"),
                Image.asset("imgs/sissi.jpg"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
