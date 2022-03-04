import 'package:flutter/material.dart';

class ColumnScreen extends StatefulWidget {
  const ColumnScreen({Key? key}) : super(key: key);

  @override
  _ColumnScreenState createState() => _ColumnScreenState();
}

class _ColumnScreenState extends State<ColumnScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Column"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        verticalDirection: VerticalDirection.up,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 300,
            height: 75,
            color: Colors.green,
          ),
          Container(
            width: 75,
            height: 75,
            color: Colors.red,
          ),
          Container(
            width: 75,
            height: 75,
            color: Colors.blue,
          ),
          Container(
            width: 75,
            height: 75,
            color: Colors.purple,
          ),
          Container(
            width: 75,
            height: 75,
            color: Colors.lightBlue,
          ),
          Container(
            width: 75,
            height: 75,
            color: Colors.pink,
          ),
        ],
      ),
    );
  }
}
