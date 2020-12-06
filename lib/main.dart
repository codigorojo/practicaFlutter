import 'package:flutter/material.dart';
import 'package:componentes/src/routes/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Componente',
      initialRoute: '/',
      routes: getApplicationsRoutes(),
/*       onGenerateRoute: (RouteSettings settings) {
        print('anda el onGenerateRoute!');
        return MaterialPageRoute(
            builder: (BuildContext context) => AlertPage());
      }, */
    );
  }
}
