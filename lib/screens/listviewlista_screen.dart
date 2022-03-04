import 'package:flutter/material.dart';

class ListViewListaScreen extends StatelessWidget {
  List<String> names = [
    "Daniel",
    "Andrea",
    "Paula",
    "José",
    "Guadalupe",
    "Lucas",
    "Emanuel",
    "Marina",
    "Luciana",
    "Belén",
    "Mara",
    "Agustín",
    "Victor",
    "Libertad",
    "Mirta",
    "Adolfo",
    "Ana",
    "Estela",
    "Carlos",
    "María"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        elevation: 1,
        title: Text('ListView'),
      ),
      body: ListView.builder(
          itemCount: names.length,
          itemBuilder: (BuildContext context, int index) {
            final name = names[index];
            return ListTile(
              title: Text(name),
              leading: Icon(Icons.person),
              onTap: () {
                print(name);
              },
              tileColor: Colors.yellow,
            );
          }),
      backgroundColor: Colors.white,
    );
  }
}
