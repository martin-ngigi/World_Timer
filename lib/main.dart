import 'package:flutter/material.dart';
import 'pages/home.dart'; //relative path
import 'package:world_timer/pages/home.dart'; // absolute path
import 'package:world_timer/pages/choose_location.dart'; // absolute path
import 'package:world_timer/pages/loading.dart'; // absolute path

void main() {
  runApp(
      MaterialApp(
        initialRoute: '/home',
        routes: {
          '/': (context) => Loading(),
          '/home': (context) => Home(),
          '/location': (context) => ChooseLocation(),
        },
      )
  );
}
