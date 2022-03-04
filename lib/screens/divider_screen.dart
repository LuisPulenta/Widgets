import 'package:flutter/material.dart';

class DividerScreen extends StatefulWidget {
  const DividerScreen({Key? key}) : super(key: key);

  @override
  _DividerScreenState createState() => _DividerScreenState();
}

class _DividerScreenState extends State<DividerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Divider'),
        ),
        body: Column(
          children: <Widget>[
            Text("Soy el Texto 1"),
            Divider(
              height: 1,
              color: Colors.red,
              indent: 10,
            ),
            Text("Soy el Texto 2"),
            Divider(
              height: 30,
              color: Colors.green,
              indent: 50,
            ),
            Text("Soy el Texto 3"),
            Divider(
              height: 50,
              color: Colors.blue,
              indent: 100,
            ),
          ],
        ));
  }
}
