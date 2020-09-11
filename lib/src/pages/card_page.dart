import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          _cardTipo1(),
          SizedBox(
            height: 30.0,
          ),
          _cardTipo2(),
        ],
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(
              Icons.photo_album,
              color: Colors.blue,
            ),
            title: Text('Soy el titulo de esta targeta'),
            subtitle: Text(
                'Esta es la decripcion de la targeta que se podra ver abajo del titulo con una letra mas pequeña '),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                child: Text('Cancelar'),
                onPressed: () {},
              ),
              FlatButton(
                child: Text('Ok'),
                onPressed: () {},
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _cardTipo2() {
    return Card(
      child: Column(
        children: <Widget>[
          FadeInImage(
            image: NetworkImage(
                'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c8/Untersberg_Mountain_Salzburg_Austria_Landscape_Photography_%28256594075%29.jpeg/1280px-Untersberg_Mountain_Salzburg_Austria_Landscape_Photography_%28256594075%29.jpeg'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration(milliseconds: 200),
          ),
          //Image(
          //
          //  image: NetworkImage(
          //      'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c8/Untersberg_Mountain_Salzburg_Austria_Landscape_Photography_%28256594075%29.jpeg/1280px-Untersberg_Mountain_Salzburg_Austria_Landscape_Photography_%28256594075%29.jpeg'),
          //),
          Container(
              padding: EdgeInsets.all(10.0),
              child: Text('Estaria genial estar ahi :c')),
        ],
      ),
    );
  }
}
