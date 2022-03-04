import 'package:flutter/material.dart';

class AnimationHeroScreen extends StatelessWidget {
  const AnimationHeroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        elevation: 1,
        title: Text('Hero'),
      ),
      body: ListView.builder(
        itemCount: 50,
        itemBuilder: (context, index) {
          final url = "https://picsum.photos/id/$index/400/300";
          return InkWell(
            onTap: () {
              Navigator.of(context)
                  .pushNamed("/animationhero2", arguments: url);
            },
            child: Hero(
              tag: url,
              child: Card(
                child: FadeInImage(
                  image: NetworkImage(url),
                  placeholder: AssetImage("assets/spinner.gif"),
                  height: 300,
                ),
              ),
            ),
          );
        },
      ),
      backgroundColor: Colors.white,
    );
  }
}
