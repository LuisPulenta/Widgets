import 'package:flutter/material.dart';

class RowScreen extends StatefulWidget {
  const RowScreen({Key? key}) : super(key: key);

  @override
  _RowScreenState createState() => _RowScreenState();
}

class _RowScreenState extends State<RowScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Row'),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.baseline,
        textBaseline: TextBaseline.alphabetic,
        children: <Widget>[
          Text("Hola javier"),
          Text(
            "Hola javier,",
            style: TextStyle(fontSize: 40),
          ),
          Text("Hola javier"),
        ],
      ),
    );
  }
}
