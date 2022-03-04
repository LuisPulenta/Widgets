import 'package:flutter/material.dart';

class PaddingScreen extends StatefulWidget {
  const PaddingScreen({Key? key}) : super(key: key);

  @override
  _PaddingScreenState createState() => _PaddingScreenState();
}

class _PaddingScreenState extends State<PaddingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Padding'),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(15),
            child: Text(
                "Lorem ipsum dolor sit amet consectetur adipisicing elit. Nostrum repellendus incidunt optio inventore reiciendis itaque odit eos, alias vitae velit eaque eligendi nemo. Debitis aliquam libero quidem laudantium corrupti quos."),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15, bottom: 40),
            child: Text(
                "Lorem ipsum dolor sit amet consectetur adipisicing elit. Nostrum repellendus incidunt optio inventore reiciendis itaque odit eos, alias vitae velit eaque eligendi nemo. Debitis aliquam libero quidem laudantium corrupti quos."),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Text(
                "Lorem ipsum dolor sit amet consectetur adipisicing elit. Nostrum repellendus incidunt optio inventore reiciendis itaque odit eos, alias vitae velit eaque eligendi nemo. Debitis aliquam libero quidem laudantium corrupti quos."),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 15, 20, 30),
            child: Text(
                "Lorem ipsum dolor sit amet consectetur adipisicing elit. Nostrum repellendus incidunt optio inventore reiciendis itaque odit eos, alias vitae velit eaque eligendi nemo. Debitis aliquam libero quidem laudantium corrupti quos."),
          ),
        ],
      ),
    );
  }
}
