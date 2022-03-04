import 'package:flutter/material.dart';

class RaisedButtonScreen extends StatefulWidget {
  const RaisedButtonScreen({Key? key}) : super(key: key);

  @override
  _RaisedButtonScreenState createState() => _RaisedButtonScreenState();
}

class _RaisedButtonScreenState extends State<RaisedButtonScreen> {
  ShapeBorder shape = RoundedRectangleBorder();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Raised Button'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text("Ayuda"),
          onPressed: () {
            setState(() {
              shape = shape is RoundedRectangleBorder
                  ? CircleBorder()
                  : RoundedRectangleBorder();
            });
          },
          color: Colors.green,
          padding: EdgeInsets.all(25),
          animationDuration: Duration(milliseconds: 300),
          shape: shape,
          disabledColor: Colors.red,
          elevation: 100,
          textColor: Colors.white,
          splashColor: Colors.black.withOpacity(0.5),
        ),
      ),
    );
  }
}
