import 'package:flutter/material.dart';

class Drawer2Screen extends StatelessWidget {
  Drawer2Screen({Key? key}) : super(key: key);

  final _scaffKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffKey,
      appBar: AppBar(
        title: Text("Uso del Drawer"),
      ),
      body: Center(
        child: Text("Hola"),
      ),
      drawer: _getDrawer(context),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.menu),
        onPressed: () => _scaffKey.currentState!.openDrawer(),
      ),
    );
  }

  Widget _getDrawer(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text("Luis Núñez"),
            accountEmail: Text("luis@yopmail.com"),
            currentAccountPicture: FlutterLogo(),
            otherAccountsPictures: <Widget>[
              FlutterLogo(),
              FlutterLogo(),
            ],
            onDetailsPressed: () {},
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.deepOrange, Colors.purpleAccent])),
          ),
          ListTile(
            title: Text("Inicio"),
            leading: Icon(Icons.home),
            onTap: () => _showHome(context),
          )
        ],
      ),
    );
  }

  _showHome(BuildContext context) {
    Navigator.pop(context);
  }
}
