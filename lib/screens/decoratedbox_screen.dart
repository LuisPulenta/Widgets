import 'package:flutter/material.dart';

class DecoratedBoxScreen extends StatefulWidget {
  const DecoratedBoxScreen({Key? key}) : super(key: key);

  @override
  _DecoratedBoxScreenState createState() => _DecoratedBoxScreenState();
}

class _DecoratedBoxScreenState extends State<DecoratedBoxScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DecoratedBox"),
      ),
      body: SizedBox(
        height: 200,
        width: 200,
        child: DecoratedBox(
          child: Text("Hola"),
          decoration: BoxDecoration(
              color: Colors.orange.withOpacity(0.5),
              border: Border.all(color: Colors.black)),
          position: DecorationPosition.foreground,
        ),
      ),
    );
  }
}
