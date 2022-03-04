import 'package:flutter/material.dart';

class ListTileScreen extends StatefulWidget {
  const ListTileScreen({Key? key}) : super(key: key);

  @override
  _ListTileScreenState createState() => _ListTileScreenState();
}

class _ListTileScreenState extends State<ListTileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListTile'),
      ),
      body: Column(
        children: [
          ListTile(
            title: Text("Gallina"),
            onTap: () {
              print("Se presionó");
            },
            onLongPress: () {
              print("Long press");
            },
            enabled: true,
            leading: Icon(Icons.print),
            subtitle: Text("Ave de corral"),
            trailing: Icon(Icons.navigate_next),
            selected: false,
          ),
          ListTile(
            title: Text("Perro"),
            onTap: () {
              print("Se presionó");
            },
            onLongPress: () {
              print("Long press");
            },
            enabled: true,
            leading: Icon(Icons.print),
            subtitle: Text("Mamífero \ndoméstico"),
            trailing: Icon(Icons.navigate_next),
            selected: true,
            dense: true,
            isThreeLine: true,
            contentPadding: EdgeInsets.all(25),
          ),
        ],
      ),
    );
  }
}
