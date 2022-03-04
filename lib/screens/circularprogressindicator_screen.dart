import 'package:flutter/material.dart';

class CircularProgressIndicatorScreen extends StatefulWidget {
  const CircularProgressIndicatorScreen({Key? key}) : super(key: key);

  @override
  _CircularProgressIndicatorScreenState createState() =>
      _CircularProgressIndicatorScreenState();
}

class _CircularProgressIndicatorScreenState
    extends State<CircularProgressIndicatorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Circular Progress Indicator"),
        centerTitle: true,
      ),
      body: Center(
        child: SizedBox(
          height: 100,
          width: 100,
          child: CircularProgressIndicator(
            strokeWidth: 7,
            color: Colors.red,
            valueColor: AlwaysStoppedAnimation<Color>(Colors.black),
          ),
        ),
      ),
    );
  }
}
