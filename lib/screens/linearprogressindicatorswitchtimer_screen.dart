import 'dart:async';

import 'package:flutter/material.dart';

class LinearProgressIndicatorSwitchTimerScreen extends StatefulWidget {
  const LinearProgressIndicatorSwitchTimerScreen({Key? key}) : super(key: key);

  @override
  _LinearProgressIndicatorSwitchTimerScreenState createState() =>
      _LinearProgressIndicatorSwitchTimerScreenState();
}

class _LinearProgressIndicatorSwitchTimerScreenState
    extends State<LinearProgressIndicatorSwitchTimerScreen> {
  String name = "Hola";
  double progressValue = 0.0;
  bool switchValue = false;

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 5), (value) {
      changeName();
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Lin Prog Ind-Switch-Timer'),
        ),
        body: Container(
          alignment: Alignment.center,
          color: Colors.yellow[200],
          child: Column(
            children: <Widget>[
              Text(
                name,
                style: TextStyle(fontSize: 30, color: Colors.black),
              ),
              LinearProgressIndicator(value: progressValue),
              Switch(
                value: switchValue,
                onChanged: (value) {
                  setState(() {
                    switchValue = value;
                  });
                },
              )
            ],
          ),
        ),
        floatingActionButton: Container(
          height: 80,
          width: 80,
          child: FloatingActionButton(
            onPressed: changeName,
            child: Text(
              "CLIC",
              style: TextStyle(fontSize: 20),
            ),
          ),
        ));
  }

  void changeName() {
    setState(() {
      name == "Hola" ? name = "Chau" : name = "Hola";
      progressValue += 0.1;
    });
  }
}
