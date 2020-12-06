import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Cards'),
        ),
        body: ListView(
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
            children: <Widget>[
              _cardTipe2(),
              SizedBox(height: 20.0),
              _cardTipe1(),
            ]));
  }

  Widget _cardTipe1() {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
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
      elevation: 10.0,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
      child: Column(children: <Widget>[
        FadeInImage(
          placeholder: AssetImage('assets/myloading2.gif'),
          //width: 300.0,
          image: NetworkImage(
              'https://i.ytimg.com/vi/uy0MaXE1N3c/maxresdefault.jpg'),
          fadeInDuration: Duration(milliseconds: 500),
          height: 250,
          fit: BoxFit.cover,
        ),
        Container(
          padding: EdgeInsets.all(10.0),
          child: Text('La Motta Filocastro'),
        )
      ]),
    );
  }
}
