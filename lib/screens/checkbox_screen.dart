import 'package:flutter/material.dart';

class CheckBoxScreen extends StatefulWidget {
  const CheckBoxScreen({Key? key}) : super(key: key);

  @override
  _CheckBoxScreenState createState() => _CheckBoxScreenState();
}

class _CheckBoxScreenState extends State<CheckBoxScreen> {
  bool? _checked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Checkbox"),
        centerTitle: true,
      ),
      body: Center(
        child: Checkbox(
          activeColor: Colors.black,
          checkColor: Colors.orangeAccent,
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          tristate: true,
          value: _checked,
          onChanged: (bool? value) {
            setState(() {
              _checked = value;
            });
          },
        ),
      ),
    );
  }
}
