import 'package:flutter/material.dart';

class FadeInImageScreen extends StatelessWidget {
  const FadeInImageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        elevation: 1,
        title: Text('Hero'),
      ),
      body: Center(
        child: FadeInImage.assetNetwork(
          placeholder: "assets/spinner.gif",
          height: 200,
          image: "https://thispersondoesnotexist.com/image",
          fadeInCurve: Curves.elasticOut,
        ),
      ),
    );
  }
}
