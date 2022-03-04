import 'package:flutter/material.dart';
import 'package:widgets/screens/navigator2_screen.dart';

class Navigator1Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Uso básico del Navigator"),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text("Mostrar segunda pantalla"),
          onPressed: () {
            _showSecondPage(context);
          },
        ),
      ),
    );
  }

  void _showSecondPage(BuildContext context) {
    final route = MaterialPageRoute(builder: (BuildContext context) {
      return Navigator2Screen(
        name: "Luis",
      );
    });
    Navigator.of(context).push(route);
  }
}
