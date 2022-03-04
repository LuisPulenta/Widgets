import 'package:flutter/material.dart';

class AnimationHero2Screen extends StatelessWidget {
  const AnimationHero2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String url = ModalRoute.of(context)!.settings.arguments.toString();

    return Scaffold(
      appBar: AppBar(
        title: Text("Visor de imagen"),
      ),
      body: Hero(
        tag: url,
        child: FadeInImage(
          image: NetworkImage(url),
          placeholder: AssetImage("assets/spinner.gif"),
        ),
      ),
    );
  }
}
