import 'package:flutter/material.dart';

class IconScreen extends StatelessWidget {
  const IconScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Iconos'),
      ),
      body: Container(
          alignment: Alignment.center,
          child: Center(
            child: Icon(
              Icons.cabin_outlined,
              size: 200,
              color: Colors.blue,
            ),
          )),
    );
  }
}
