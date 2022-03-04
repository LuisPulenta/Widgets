import 'package:flutter/material.dart';

class PositionedScreen extends StatefulWidget {
  const PositionedScreen({Key? key}) : super(key: key);

  @override
  _PositionedScreenState createState() => _PositionedScreenState();
}

class _PositionedScreenState extends State<PositionedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Positioned'),
      ),
      body: Container(
        height: 500,
        width: 300,
        color: Colors.yellow,
        child: Stack(
          children: <Widget>[
            Positioned(
              child: Container(height: 40, width: 40, color: Colors.red),
              top: 20,
              right: 0,
            )
          ],
        ),
      ),
    );
  }
}
