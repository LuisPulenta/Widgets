import 'package:flutter/material.dart';

class AssetsScreen extends StatelessWidget {
  const AssetsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          elevation: 1,
          title: Text('Assets'),
        ),
        body: ListView(
          children: [
            Image.asset(
              "assets/colibri1.jpg",
              width: 320,
              height: 200,
            ),
            Image.asset(
              "assets/colibri2.jpg",
              width: 320,
              height: 200,
            ),
            Image.asset(
              "assets/colibri3.jpg",
              width: 320,
              height: 200,
            ),
          ],
        ));
  }
}
