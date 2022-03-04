import 'package:flutter/material.dart';

class ColorsScreen extends StatefulWidget {
  const ColorsScreen({Key? key}) : super(key: key);

  @override
  State<ColorsScreen> createState() => _ColorsScreenState();
}

class _ColorsScreenState extends State<ColorsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        elevation: 1,
        title: Text('Colores'),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              color: Colors.blue,
              width: 50,
              height: 50,
            ),
            Container(
              color: Colors.blue[100],
              width: 50,
              height: 50,
            ),
            Row(
              children: [
                Container(
                  color: Colors.blue[50],
                  width: 35,
                  height: 35,
                ),
                Container(
                  color: Colors.blue[100],
                  width: 35,
                  height: 35,
                ),
                Container(
                  color: Colors.blue[200],
                  width: 35,
                  height: 35,
                ),
                Container(
                  color: Colors.blue[300],
                  width: 35,
                  height: 35,
                ),
                Container(
                  color: Colors.blue[400],
                  width: 35,
                  height: 35,
                ),
                Container(
                  color: Colors.blue[500],
                  width: 35,
                  height: 35,
                ),
                Container(
                  color: Colors.blue[600],
                  width: 35,
                  height: 35,
                ),
                Container(
                  color: Colors.blue[700],
                  width: 35,
                  height: 35,
                ),
                Container(
                  color: Colors.blue[800],
                  width: 35,
                  height: 35,
                ),
                Container(
                  color: Colors.blue[900],
                  width: 35,
                  height: 35,
                ),
              ],
            ),
            Container(
              color: Color(0xffD32F2F),
              width: 50,
              height: 50,
            ),
            Container(
              color: Color(0xffD32F2F).withOpacity(0.5),
              width: 50,
              height: 50,
            ),
            Container(
              color: Color(0xffD32F2F).withAlpha(0xAA),
              width: 50,
              height: 50,
            ),
            Container(
              color: Color.fromRGBO(255, 0, 0, 1),
              width: 50,
              height: 50,
            ),
            Container(
              color: Color.fromRGBO(0, 255, 0, 1),
              width: 50,
              height: 50,
            ),
            Container(
              color: Color.fromRGBO(0, 0, 255, 1),
              width: 50,
              height: 50,
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
