import 'package:flutter/material.dart';

class FutureBuilderScreen extends StatefulWidget {
  const FutureBuilderScreen({Key? key}) : super(key: key);

  @override
  _FutureBuilderScreenState createState() => _FutureBuilderScreenState();
}

class _FutureBuilderScreenState extends State<FutureBuilderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FutureBuilder'),
      ),
      body: FutureBuilder<String>(
        future: getData(),
        builder: (BuildContext context, snapshot) {
          if (snapshot.hasData) {
            return Text(snapshot.data.toString());
          } else {
            return CircularProgressIndicator();
          }
        },
        initialData: "Cargando...",
      ),
    );
  }
}

Future<String> getData() async {
  await Future.delayed(Duration(seconds: 3));
  return "Hola";
}
