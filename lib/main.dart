import 'package:rodriguez/uno.dart';
import 'package:rodriguez/dos.dart';
import 'package:rodriguez/tres.dart';
import 'package:flutter/material.dart';
import 'package:rodriguez/drawer_menu.dart';
import 'package:rodriguez/cuatro.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static const String uno = Uno.routeName;
  static const String dos = Dos.routeName;
  static const String tres = Tres.routeName;
  static const String cuatro = Cuatro.routeName;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ejemplo Drawer Menu',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        uno: (context) => Uno(),
        dos: (context) => Dos(),
        tres: (context) => Tres(),
        cuatro: (context) => Cuatro()
      },
      home: Uno(),
    );
  }
}

class Mov {}
