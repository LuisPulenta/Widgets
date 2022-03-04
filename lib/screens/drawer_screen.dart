import 'package:flutter/material.dart';

class DrawerScreen extends StatelessWidget {
  DrawerScreen({Key? key}) : super(key: key);

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
          DrawerHeader(
              decoration: BoxDecoration(color: Colors.orange),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  FlutterLogo(
                    size: 100,
                  ),
                  Text(
                    "Uso de Drawer",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              )),
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
