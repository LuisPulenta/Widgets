import 'package:flutter/material.dart';

class SimpleDialogScreen extends StatefulWidget {
  const SimpleDialogScreen({Key? key}) : super(key: key);

  @override
  _SimpleDialogScreenState createState() => _SimpleDialogScreenState();
}

class _SimpleDialogScreenState extends State<SimpleDialogScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Simple Dialog'),
      ),
      body: Center(
          child: RaisedButton(
        onPressed: () {
          _show(context);
        },
        child: Text("Mostrar"),
      )),
    );
  }

  void _show(BuildContext context) {
    final dialog = SimpleDialog(
      title: Text("Título"),
      backgroundColor: Colors.yellow,
      titlePadding: EdgeInsets.all(50),
      contentPadding: EdgeInsets.all(10),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10))),
      children: <Widget>[
        ListTile(
          title: Text("Eliminar"),
          leading: Icon(Icons.delete),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          title: Text("Grabar"),
          leading: Icon(Icons.save),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          title: Text("Salir"),
          leading: Icon(Icons.exit_to_app),
          onTap: () {
            Navigator.pop(context);
          },
        )
      ],
    );
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return dialog;
        });
  }
}
