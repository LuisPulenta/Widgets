import 'package:flutter/material.dart';

class ListViewScreen extends StatelessWidget {
  const ListViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        elevation: 1,
        title: Text('ListView'),
      ),
      body: ListView(
        children: <Widget>[
          Card(
              child: Image.network(
            "https://thispersondoesnotexist.com/image",
            width: 150,
            height: 150,
          )),
          Card(
              child: Image.network(
            "https://thispersondoesnotexist.com/image",
            width: 150,
            height: 150,
          )),
          Card(
              child: Image.network(
            "https://thispersondoesnotexist.com/image",
            width: 150,
            height: 150,
          )),
        ],
      ),
      backgroundColor: Colors.white,
    );
  }
}
