import 'package:flutter/material.dart';

class Navigator3Screen extends StatelessWidget {
  final String name;
  final String lastName;

  Navigator3Screen({required this.name, required this.lastName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigator 3"),
      ),
      body: Center(
        child: Text("${name} ${lastName}"),
      ),
    );
  }
}
