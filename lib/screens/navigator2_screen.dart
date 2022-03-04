import 'package:flutter/material.dart';

class Navigator2Screen extends StatelessWidget {
  final String name;

  Navigator2Screen({required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigator 2"),
      ),
      body: Center(
        child: Text(name),
      ),
    );
  }
}
