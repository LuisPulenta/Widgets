import 'dart:ui';

import 'package:flutter/material.dart';

class ChipScreen extends StatefulWidget {
  const ChipScreen({Key? key}) : super(key: key);

  @override
  _ChipScreenState createState() => _ChipScreenState();
}

class _ChipScreenState extends State<ChipScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chip"),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Center(
            child: Row(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 5),
              child: Chip(
                label: Text("Vuelo"),
                labelStyle: TextStyle(color: Colors.white),
                backgroundColor: Colors.black,
                avatar: CircleAvatar(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,
                  child: Icon(Icons.airplanemode_active),
                ),
                deleteIcon: Icon(
                  Icons.close,
                  color: Colors.yellow,
                ),
                deleteIconColor: Colors.red,
                deleteButtonTooltipMessage: 'Borrar',
                elevation: 5,
                labelPadding: EdgeInsets.all(5),
                padding: EdgeInsets.all(10),
                clipBehavior: Clip.antiAlias,
                //shape: BeveledRectangleBorder(),
                materialTapTargetSize: MaterialTapTargetSize.padded,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 5),
              child: Chip(
                label: Text("Ventisca"),
                labelStyle: TextStyle(color: Colors.white),
                backgroundColor: Colors.blue,
                avatar: CircleAvatar(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,
                  child: Icon(Icons.ac_unit),
                ),
                deleteIcon: Icon(
                  Icons.close,
                  color: Colors.yellow,
                ),
                deleteIconColor: Colors.red,
                deleteButtonTooltipMessage: 'Borrar',
                elevation: 5,
                labelPadding: EdgeInsets.all(5),
                padding: EdgeInsets.all(10),
                clipBehavior: Clip.antiAlias,
                //shape: BeveledRectangleBorder(),
                materialTapTargetSize: MaterialTapTargetSize.padded,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 5),
              child: Chip(
                label: Text("Nublado"),
                labelStyle: TextStyle(color: Colors.white),
                backgroundColor: Colors.blueGrey,
                avatar: CircleAvatar(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  child: Icon(Icons.cloud),
                ),
                deleteIcon: Icon(
                  Icons.close,
                  color: Colors.yellow,
                ),
                deleteIconColor: Colors.red,
                deleteButtonTooltipMessage: 'Borrar',
                elevation: 5,
                labelPadding: EdgeInsets.all(5),
                padding: EdgeInsets.all(10),
                clipBehavior: Clip.antiAlias,
                //shape: BeveledRectangleBorder(),
                materialTapTargetSize: MaterialTapTargetSize.padded,
              ),
            ),
          ],
        )),
      ),
    );
  }
}
