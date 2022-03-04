import 'package:flutter/material.dart';

class RichTextScreen extends StatefulWidget {
  const RichTextScreen({Key? key}) : super(key: key);

  @override
  _RichTextScreenState createState() => _RichTextScreenState();
}

class _RichTextScreenState extends State<RichTextScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rich Text'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
              "Flutter (software). \nFlutter es un SDK de código fuente abierto de desarrollo de aplicaciones móviles creado por Google. Suele usarse para desarrollar interfaces de usuario para aplicaciones en Android, iOS y Web así como método primario para crear aplicaciones para Google Fuchsia.1​"),
          SizedBox(
            height: 100,
          ),
          Text.rich(
            TextSpan(
              text: "",
              style: TextStyle(),
              children: <TextSpan>[
                TextSpan(
                    text: "Flutter (software). \n",
                    style: TextStyle(fontSize: 25)),
                TextSpan(
                    text: "Flutter ",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(
                    text: "es un SDK de ",
                    style: TextStyle(fontWeight: FontWeight.normal)),
                TextSpan(
                  text: "código fuente abierto ",
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      color: Colors.blue,
                      decoration: TextDecoration.underline),
                ),
                TextSpan(
                    text:
                        "de desarrollo de aplicaciones móviles creado por Google. Suele usarse para desarrollar interfaces de usuario para aplicaciones en Android, iOS y Web así como método primario para crear aplicaciones para Google Fuchsia.1​",
                    style: TextStyle(fontWeight: FontWeight.normal)),
              ],
            ),
            textScaleFactor: 1,
            textDirection: TextDirection.ltr,
            maxLines: 5,
            overflow: TextOverflow.fade,
            style: TextStyle(color: Colors.red),
            textAlign: TextAlign.justify,
            strutStyle: StrutStyle(fontSize: 20),
          )
        ],
      ),
    );
  }
}
