import 'package:flutter/material.dart';
import 'package:rodriguez/main.dart';

class DrawerMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          _buildDrawerHeader(),
          _buildDrawerItem(
              icon: Icons.home,
              text: 'Uno',
              onTap: () =>
                  {Navigator.pushReplacementNamed(context, MyApp.uno)}),
          _buildDrawerItem(
              icon: Icons.account_circle,
              text: 'Dos',
              onTap: () =>
                  {Navigator.pushReplacementNamed(context, MyApp.dos)}),
          _buildDrawerItem(
              icon: Icons.movie,
              text: 'Tres',
              onTap: () =>
                  {Navigator.pushReplacementNamed(context, MyApp.tres)}),
          _buildDrawerItem(
              icon: Icons.movie,
              text: 'Cuatro',
              onTap: () =>
                  {Navigator.pushReplacementNamed(context, MyApp.cuatro)}),
        ],
      ),
    );
  }

  Widget _buildDrawerHeader() {
    return DrawerHeader(
        margin: EdgeInsets.zero,
        padding: EdgeInsets.zero,
        decoration: BoxDecoration(
            image: DecorationImage(fit: BoxFit.fill, image: AssetImage(''))),
        child: Stack(children: <Widget>[
          Positioned(
              bottom: 12.0,
              left: 16.0,
              child: Text("Compilación Movil",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500))),
        ]));
  }

  Widget _buildDrawerItem(
      {required IconData icon,
      required String text,
      required GestureTapCallback onTap}) {
    return ListTile(
      title: Row(
        children: <Widget>[
          Icon(icon),
          Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text(text),
          )
        ],
      ),
      onTap: onTap,
    );
  }
}
