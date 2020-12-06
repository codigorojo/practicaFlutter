import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Cards'),
        ),
        body: ListView(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
            children: <Widget>[
              _cardTipe2(),
              SizedBox(height: 20.0),
              _cardTipe1(),
              SizedBox(height: 20.0),
              _cardTipe3(),
              SizedBox(height: 20.0),
              _cardTipe1(),
              SizedBox(height: 20.0),
              _cardTipe3(),
              SizedBox(height: 20.0),
              _cardTipe1(),
              SizedBox(height: 20.0),
              _cardTipe3(),
              SizedBox(height: 20.0),
              _cardTipe1(),
              SizedBox(height: 20.0),
              _cardTipe3(),
              SizedBox(height: 20.0),
              _cardTipe1(),
              SizedBox(height: 20.0),
              _cardTipe3(),
              SizedBox(height: 20.0),
              _cardTipe1(),
              SizedBox(height: 20.0),
              _cardTipe3(),
              SizedBox(height: 20.0),
              _cardTipe1(),
              SizedBox(height: 20.0),
              _cardTipe3(),
            ]));
  }

  Widget _cardTipe1() {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
      child: Container(
        padding: const EdgeInsets.fromLTRB(0, 20.0, 0, 5),
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
      ),
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
          padding: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 15.0),
          child: Text('La Motta Filocastro'),
        )
      ]),
    );
  }

  Widget _cardTipe3() {
    final card = Container(
      /*      elevation: 10.0,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(28.0)),*/
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
          padding: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 15.0),
          child: Text('La Motta Filocastro'),
        )
      ]),
    );

    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: Colors.grey[100],
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.black26,
              blurRadius: 15.0,
              spreadRadius: 5.0,
            )
          ]),
      child: ClipRRect(borderRadius: BorderRadius.circular(20.0), child: card),
    );
  }
}
