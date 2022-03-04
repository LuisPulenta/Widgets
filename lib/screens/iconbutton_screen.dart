import 'package:flutter/material.dart';

class IconButtonScreen extends StatelessWidget {
  const IconButtonScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Icon Button'),
      ),
      body: Container(
          alignment: Alignment.center,
          child: Center(
            child: IconButton(
              icon: Icon(
                Icons.print,
              ),
              iconSize: 40,
              color: Colors.orange,
              onPressed: () {
                print("Hola");
              },
              padding: EdgeInsets.all(20),
              splashColor: Colors.black,
              disabledColor: Colors.red,
              highlightColor: Colors.green,
              tooltip: "Apretá acá!!!",
            ),
          )),
    );
  }
}
