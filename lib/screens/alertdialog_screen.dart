import 'package:flutter/material.dart';

class AlertDialogScreen extends StatelessWidget {
  AlertDialogScreen({Key? key}) : super(key: key);

  final _scaffKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffKey,
        appBar: AppBar(
          title: Text("Mostrar un AlertDialog"),
        ),
        body: Builder(
          builder: (BuildContext context) {
            return Center(
              child: ElevatedButton(
                child: Text("Mostrar"),
                onPressed: () => _showDialog(context),
              ),
            );
          },
        ));
  }

  void _showDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Pregunta"),
            content: Text("¿Estás seguro de eliminar el elemento?"),
            actions: [
              FlatButton(
                child: Text("NO"),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              FlatButton(
                child: Text("SI"),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          );
        },
        barrierDismissible: false);
  }
}
