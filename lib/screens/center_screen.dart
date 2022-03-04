import 'package:flutter/material.dart';

class CenterScreen extends StatefulWidget {
  const CenterScreen({Key? key}) : super(key: key);

  @override
  _CenterScreenState createState() => _CenterScreenState();
}

class _CenterScreenState extends State<CenterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Center"),
        centerTitle: true,
      ),
      body: Center(
        child: Text("Center"),
        heightFactor: 12,
        widthFactor: 3,
      ),
    );
  }
}
