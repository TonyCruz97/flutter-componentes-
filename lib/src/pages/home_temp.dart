import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final opciones = ['Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componetes Temp'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('ListTitle Title'),
          ),
          Divider(),
          ListTile(
            title: Text('ListTitle Title'),
          ),
          Divider(),
          ListTile(
            title: Text('ListTitle Title'),
          ),
        ],
      ),
    );
  }
}
