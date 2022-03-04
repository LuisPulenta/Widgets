import 'package:flutter/material.dart';

class ListViewImagesScreen extends StatelessWidget {
  const ListViewImagesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        elevation: 1,
        title: Text('ListView'),
      ),
      body: ListView.builder(
          itemCount: 50,
          itemBuilder: (BuildContext context, int index) {
            return Card(
                child: Image.network(
              "https://picsum.photos/id/$index/320/200",
              width: 150,
              height: 150,
            ));
          }),
      backgroundColor: Colors.white,
    );
  }
}
