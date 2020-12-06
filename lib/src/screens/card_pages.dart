import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Cards'),
        ),
        body: ListView(
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
            children: <Widget>[
              _cardTipe1(),
              SizedBox(height: 10.0),
              _cardTipe2(),
            ]));
  }

  Widget _cardTipe1() {
    return Card(
      child: Column(children: <Widget>[
        ListTile(
          leading: Icon(Icons.photo_album),
          title: Text('Soy el título de la tarjeta'),
          subtitle: Text(
              'Aqui vamos a empezar a narrar la verdadera historia de este card, Había una vez...'),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FlatButton(onPressed: () {}, child: Text('Cancelar')),
            FlatButton(onPressed: () {}, child: Text('Ok')),
          ],
        )
      ]),
    );
  }

  Widget _cardTipe2() {
    return Card(
      child: Column(children: <Widget>[
        FadeInImage(
            placeholder: AssetImage('assets/myloading.gif'),
            image: NetworkImage(
                'https://i.ytimg.com/vi/uy0MaXE1N3c/maxresdefault.jpg')),
        Container(
          padding: EdgeInsets.all(10.0),
          child: Text('La Motta Filocastro'),
        )
      ]),
    );
  }
}
