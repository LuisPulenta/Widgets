import 'package:flutter/material.dart';

class GestureDetectorScreen extends StatefulWidget {
  const GestureDetectorScreen({Key? key}) : super(key: key);

  @override
  _GestureDetectorScreenState createState() => _GestureDetectorScreenState();
}

class _GestureDetectorScreenState extends State<GestureDetectorScreen> {
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
            GestureDetector(
              onTap: _onTap,
              onLongPress: _onLongPress,
              child: Row(
                children: [
                  Icon(Icons.folder),
                  SizedBox(
                    width: 15,
                  ),
                  Text("Mis videos"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _onTap() {
    print("hola");
  }

  void _onLongPress() {
    print("se ha mantenido el CLIC");
  }
}
