import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  _SliderScreenState createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double sliderValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Slider(
              value: sliderValue,
              min: 0,
              max: 100,
              divisions: 10,
              label: "Volumen = ${sliderValue}",
              activeColor: Colors.red,
              onChanged: (value) {
                setState(() {
                  sliderValue = value;
                });
              },
            ),
            Text(
              sliderValue.toString(),
            ),
          ],
        ),
      ),
    );
  }
}
