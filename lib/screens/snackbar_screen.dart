import 'package:flutter/material.dart';

class SnackBarScreen extends StatefulWidget {
  const SnackBarScreen({Key? key}) : super(key: key);

  @override
  _SnackBarScreenState createState() => _SnackBarScreenState();
}

class _SnackBarScreenState extends State<SnackBarScreen> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: Text('SnackBar'),
      ),
      body: Builder(builder: (BuildContext context2) {
        return Center(
          child: RaisedButton(
            onPressed: () {
              _showMessage(context2);
            },
            child: Text("Mostrar"),
          ),
        );
      }),
    );
  }

  void _showMessage(BuildContext context) {
    final snackbar = SnackBar(
      backgroundColor: Colors.yellow,
      duration: Duration(seconds: 5),
      action: SnackBarAction(
        label: "Mostrar",
        onPressed: () {},
      ),
      content: Text(
        "Hola",
        style: TextStyle(color: Colors.black),
      ),
    );
    //Scaffold.of(context).showSnackBar(snackbar);
    scaffoldKey.currentState!.showSnackBar(snackbar);
  }
}
