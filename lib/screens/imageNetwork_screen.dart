import 'package:flutter/material.dart';

class ImageNetworkScreen extends StatefulWidget {
  const ImageNetworkScreen({Key? key}) : super(key: key);

  @override
  State<ImageNetworkScreen> createState() => _ImageNetworkScreenState();
}

class _ImageNetworkScreenState extends State<ImageNetworkScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Imagen desde Network")),
      body: Center(
          child: Image.network(
        "https://render.fineartamerica.com/images/images-profile-flow/400/images/artworkimages/mediumlarge/3/club-atletico-talleres-argentinian-football-club-talleres-cordoba-logo-first-division-superliga-argentina-argentina-football-championships-football-cordoba-argentina-silk-lexie-howe.jpg",
        height: 300,
        width: 300,
        fit: BoxFit.contain,
      )),
    );
  }
}
