import 'package:flutter/material.dart';

class WrapScreen extends StatefulWidget {
  const WrapScreen({Key? key}) : super(key: key);

  @override
  _WrapScreenState createState() => _WrapScreenState();
}

class _WrapScreenState extends State<WrapScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wrap'),
      ),
      body: Wrap(
        direction: Axis.vertical,
        alignment: WrapAlignment.center,
        spacing: 20,
        children: <Widget>[
          Icon(Icons.home, size: 100, color: Colors.blue),
          Icon(Icons.home, size: 70, color: Colors.red),
          Icon(Icons.home, size: 70, color: Colors.yellow),
          Icon(Icons.home, size: 120, color: Colors.green),
          Icon(Icons.home, size: 70, color: Colors.orange),
          Icon(Icons.home, size: 70, color: Colors.blue),
          Icon(Icons.home, size: 70, color: Colors.red),
          Icon(Icons.home, size: 140, color: Colors.yellow),
          Icon(Icons.home, size: 70, color: Colors.green),
          Icon(Icons.home, size: 70, color: Colors.orange),
        ],
      ),
    );
  }
}
