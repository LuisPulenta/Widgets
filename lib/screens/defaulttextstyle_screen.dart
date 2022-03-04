import 'package:flutter/material.dart';

class DefaultTextStyleScreen extends StatefulWidget {
  const DefaultTextStyleScreen({Key? key}) : super(key: key);

  @override
  _DefaultTextStyleScreenState createState() => _DefaultTextStyleScreenState();
}

class _DefaultTextStyleScreenState extends State<DefaultTextStyleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("DefaultTextStyle"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Primer Texto con el estilo principal"),
            Text("Segundo Texto con el estilo principal"),
            Text("Tercero Texto con el estilo principal"),
            Text("Cuarto Texto con el estilo principal"),
            Text("Quinto Texto con el estilo principal"),
            Text("Sexto Texto con el estilo principal"),
            DefaultTextStyle(
              style: TextStyle(
                  color: Colors.blue, decoration: TextDecoration.underline),
              child: Padding(
                padding: EdgeInsets.all(18),
                child: Column(
                  children: <Widget>[
                    Text("Soy el Texto1 del Padding"),
                    Text("Soy el Texto2 del Padding"),
                    Text("Soy el Texto3 del Padding"),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
