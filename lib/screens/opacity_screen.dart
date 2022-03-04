import 'package:flutter/material.dart';

class OpacityScreen extends StatefulWidget {
  const OpacityScreen({Key? key}) : super(key: key);

  @override
  _OpacityScreenState createState() => _OpacityScreenState();
}

class _OpacityScreenState extends State<OpacityScreen> {
  double _opacity = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Opacity'),
      ),
      body: Column(
        children: <Widget>[
          Opacity(
            opacity: _opacity,
            child: FlutterLogo(size: 120),
          ),
          AnimatedOpacity(
            opacity: _opacity,
            child: FlutterLogo(size: 120),
            duration: Duration(seconds: 3),
          ),
          Text("Valor: ${_opacity}"),
          Slider(
            value: _opacity,
            onChanged: (value) {
              setState(() {
                _opacity = value;
              });
            },
            min: 0,
            max: 1,
          )
        ],
      ),
    );
  }
}
