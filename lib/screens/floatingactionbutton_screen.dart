import 'package:flutter/material.dart';

class FloatingActionButtonScreen extends StatefulWidget {
  const FloatingActionButtonScreen({Key? key}) : super(key: key);

  @override
  _FloatingActionButtonScreenState createState() =>
      _FloatingActionButtonScreenState();
}

class _FloatingActionButtonScreenState
    extends State<FloatingActionButtonScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FloatingActionButton'),
      ),
      body: Center(
        child: Text("FloatingActionButton"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _onTap,
        child: Icon(Icons.add),
        backgroundColor: Colors.orange,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        elevation: 20,
        foregroundColor: Colors.blue,
        mini: true,
        tooltip: "Imprime en consola un valor",
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  void _onTap() {
    print("Ha hecho print");
  }
}
