import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Alert')),
      body: Center(
          child: RaisedButton(
        child: Text('HolaQueTalComo'),
        onPressed: () => _showAlert(context),
        color: Colors.deepOrange,
        textColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
        padding: EdgeInsets.all(20.0),
      )),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.ac_unit),
          onPressed: () {
            Navigator.pop(context);
          }),
    );
  }

  void _showAlert(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: true,
        builder: (context) {
          return AlertDialog(
            title: Text('hola'),
            content: Text('csdkcaewkfbn  ckjcasj ki'),
            actions: [
              FlatButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: Text('OK')),
              FlatButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('CANCELAME')),
            ],
          );
        });
  }
}
