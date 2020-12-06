import 'package:flutter/material.dart';
import 'package:componentes/src/screens/alert_page.dart';
import 'package:componentes/src/screens/avatar_page.dart';
import 'package:componentes/src/screens/card_pages.dart';
import 'package:componentes/src/screens/home_page.dart';

Map<String, WidgetBuilder> getApplicationsRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => HomePage(),
    'alert': (BuildContext context) => AlertPage(),
    'avatar': (BuildContext context) => AvatarPage(),
    'card': (BuildContext context) => CardPage(),
  };
}
