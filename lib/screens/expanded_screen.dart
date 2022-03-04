import 'package:flutter/material.dart';

class ExpandedScreen extends StatefulWidget {
  const ExpandedScreen({Key? key}) : super(key: key);

  @override
  _ExpandedScreenState createState() => _ExpandedScreenState();
}

class _ExpandedScreenState extends State<ExpandedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expanded'),
      ),
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                flex: 3,
                child: Container(
                  color: Colors.orange,
                  height: 100,
                  width: 100,
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  color: Colors.green,
                  height: 100,
                  width: 100,
                ),
              ),
              Expanded(
                child: Text(
                  "GCoding Academy",
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Text(
                  "GCoding Academy",
                ),
              ),
              IconButton(onPressed: () {}, icon: Icon(Icons.add), iconSize: 40),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Text(
                  "GCoding Academy 2022",
                ),
              ),
              IconButton(onPressed: () {}, icon: Icon(Icons.add), iconSize: 40),
            ],
          ),
          Expanded(
            child: Container(
              color: Colors.blue,
              width: 200,
              height: 200,
            ),
          )
        ],
      ),
    );
  }
}
