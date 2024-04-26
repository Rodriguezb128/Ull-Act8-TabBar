import 'package:flutter/material.dart';
import 'package:rodriguez/drawer_menu.dart';

class Tres extends StatelessWidget {
  static const String routeName = '/tres';
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
          title: Text(""),
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
                child: Icon(Icons.add_a_photo),
                style: ElevatedButton.styleFrom(
                    onPrimary: Color(0xffffffff),
                    primary: Color(0xff03796f),
                    textStyle:
                        TextStyle(fontSize: 30, fontWeight: FontWeight.normal)),
              ),
              OutlinedButton(
                onPressed: () {
                  print("Outlined Button pressed");
                },
                child: Icon(Icons.add_a_photo),
                style: ElevatedButton.styleFrom(
                    onPrimary: Color(0xff000000),
                    primary: Color(0xff9f1800),
                    textStyle: TextStyle(fontSize: 18)),
              ),
              TextButton(
                onPressed: () {
                  print("Text Button pressed");
                },
                child: Icon(Icons.add_location),
                style: ElevatedButton.styleFrom(
                    onPrimary: Color(0xff000000),
                    primary: Color(0xfffbac00),
                    textStyle: TextStyle(fontSize: 15)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
