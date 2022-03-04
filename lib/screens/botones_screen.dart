import 'dart:async';
import 'package:flutter/material.dart';

class BotonesScreen extends StatefulWidget {
  const BotonesScreen({Key? key}) : super(key: key);

  @override
  State<BotonesScreen> createState() => _BotonesScreenState();
}

class _BotonesScreenState extends State<BotonesScreen> {
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gesture Detector'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
                color: Colors.green,
                textColor: Colors.white,
                child: Text("RaisedButton"),
                onPressed: _onPressBtn1),
            ElevatedButton(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.save),
                  SizedBox(
                    width: 15,
                  ),
                  Text('ElevatedButton'),
                ],
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith<Color>(
                    (Set<MaterialState> states) {
                  return Color(0xFF120E43);
                }),
              ),
              onPressed: () => _onPressBtn5(),
            ),
            FlatButton(child: Text("FlatButton"), onPressed: _onPressBtn2),
            TextButton(
              child: Text(
                "TextButton",
                style: TextStyle(color: Colors.yellow),
              ),
              onPressed: _onPressBtn2,
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith<Color>(
                    (Set<MaterialState> states) {
                  return Colors.red;
                }),
              ),
            ),
            OutlineButton(
                textColor: Colors.black,
                child: Text("OutlineButton"),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                borderSide: BorderSide(color: Colors.red),
                onPressed: _onPressBtn4),
            OutlinedButton(
                child: Text(
                  "OutlinedButton",
                  style: TextStyle(color: Colors.purple),
                ),
                style: OutlinedButton.styleFrom(
                  shape: StadiumBorder(),
                  side: BorderSide(width: 2, color: Colors.red),
                ),
                onPressed: _onPressBtn4),
            IconButton(
                color: Colors.blue,
                icon: Icon(Icons.delete),
                onPressed: _onPressBtn3),
            OutlinedButton(
              style: ButtonStyle(
                shape:
                    MaterialStateProperty.all<OutlinedBorder>(StadiumBorder()),
                side: MaterialStateProperty.resolveWith<BorderSide>(
                    (Set<MaterialState> states) {
                  final Color color = states.contains(MaterialState.pressed)
                      ? Colors.blue
                      : Colors.red;
                  return BorderSide(color: color, width: 2);
                }),
              ),
              onPressed: () {},
              child: Text('OutlinedButton with custom shape and border'),
            )
          ],
        ),
      ),
    );
  }

  void _onPressBtn1() {}

  void _onPressBtn2() {}

  void _onPressBtn3() {}

  void _onPressBtn4() {}

  void _onPressBtn5() {}
}
