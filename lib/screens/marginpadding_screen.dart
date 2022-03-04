import 'package:flutter/material.dart';

class MarginPaddingScreen extends StatefulWidget {
  const MarginPaddingScreen({Key? key}) : super(key: key);

  @override
  State<MarginPaddingScreen> createState() => _MarginPaddingScreenState();
}

class _MarginPaddingScreenState extends State<MarginPaddingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        elevation: 1,
        title: Text('Margin y Padding'),
      ),
      body: Container(
        width: 200,
        height: 200,
        color: Colors.orange,
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(15),
        child: Text(
          "------",
          style: TextStyle(backgroundColor: Colors.black, fontSize: 60),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
      backgroundColor: Colors.white,
    );
  }
}
