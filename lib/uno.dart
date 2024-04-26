import 'package:flutter/material.dart';
import 'package:rodriguez/drawer_menu.dart';

class Uno extends StatelessWidget {
  static const String routeName = '/uno';
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Hello World',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.brown),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutlab"),
        ),
        drawer: DrawerMenu(),
        body: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  print("Elevetad Button pressed");
                },
                child: Text("Elevated Button"),
                style: ElevatedButton.styleFrom(
                    onPrimary: Color(0xffffffff),
                    primary: Color(0xff034079),
                    textStyle: TextStyle(fontSize: 30)),
              ),
              OutlinedButton(
                onPressed: () {
                  print("Outlined Button pressed");
                },
                child: Text("Outlined Button"),
                style: ElevatedButton.styleFrom(
                    onPrimary: Color(0xff000000),
                    primary: Color(0xffffb37f),
                    textStyle: TextStyle(fontSize: 18)),
              ),
              TextButton(
                onPressed: () {
                  print("Text Button pressed");
                },
                child: Text("text Button"),
                style: ElevatedButton.styleFrom(
                    onPrimary: Color(0xff000000),
                    primary: Color(0xfffb7000),
                    textStyle: TextStyle(fontSize: 15)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
