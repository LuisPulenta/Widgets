import 'package:flutter/material.dart';

class DissmisibleScreen extends StatefulWidget {
  const DissmisibleScreen({Key? key}) : super(key: key);

  @override
  _DissmisibleScreenState createState() => _DissmisibleScreenState();
}

class _DissmisibleScreenState extends State<DissmisibleScreen> {
  var _list = [
    "Talleres",
    "Belgrano",
    "River",
    "Boca",
    "Independiente",
    "Racing",
    "San Lorenzo"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Dissmisible"),
        ),
        body: ListView.builder(
            itemCount: _list.length,
            itemBuilder: (BuildContext context, int index) {
              return TeamWidget(
                nombre: _list[index],
                index: index,
                callback: _ondeleted,
              );
            }));
  }

  void _ondeleted(int index) {
    setState(() {
      _list.removeAt(index);
    });
  }
}

typedef OnItemDeletedRequest = void Function(int index);

class TeamWidget extends StatelessWidget {
  final String nombre;
  final int index;
  final OnItemDeletedRequest callback;

  TeamWidget(
      {required this.nombre, required this.index, required this.callback});

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: Key(nombre),
      onDismissed: (DismissDirection direction) {
        callback(index);
      },
      child: ListTile(
        title: Text(nombre),
      ),
      direction: DismissDirection.horizontal,
      background: Container(
        color: Colors.red,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(
              Icons.delete,
              color: Colors.white,
            ),
            Text(
              "Eliminar",
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
      secondaryBackground: Container(
        color: Colors.green,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Icon(
              Icons.delete,
              color: Colors.white,
            ),
            Text(
              "Eliminar",
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
