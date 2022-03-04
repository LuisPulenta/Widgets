import 'package:flutter/material.dart';

class ListViewBuilderScreen extends StatelessWidget {
  const ListViewBuilderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        elevation: 1,
        title: Text('ListView'),
      ),
      body: ListView.builder(itemBuilder: (BuildContext context, int index) {
        return Card(
            child: Image.network(
          "https://thispersondoesnotexist.com/image?index=$index",
          width: 150,
          height: 150,
        ));
      }),
      backgroundColor: Colors.white,
    );
  }
}
