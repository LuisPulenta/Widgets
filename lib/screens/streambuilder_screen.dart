import 'package:flutter/material.dart';

class StreamBuilderScreen extends StatefulWidget {
  const StreamBuilderScreen({Key? key}) : super(key: key);

  @override
  _StreamBuilderScreenState createState() => _StreamBuilderScreenState();
}

class _StreamBuilderScreenState extends State<StreamBuilderScreen> {
  Stream<int> _secondStream =
      Stream.periodic(Duration(seconds: 1), (i) => (i + 1));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StreamBuilder'),
      ),
      body: Container(
        child: Center(
          child: StreamBuilder(
            stream: _secondStream,
            initialData: 0,
            builder: (context, snapshot) {
              if (snapshot.hasData &&
                  snapshot.connectionState == ConnectionState.active) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Han pasado ${snapshot.data} segundos"),
                    AnimatedContainer(
                      width: 200,
                      height: 200,
                      duration: Duration(milliseconds: 300),
                      color: int.parse(snapshot.data.toString()) % 2 == 0
                          ? Colors.red
                          : Colors.blue,
                    ),
                  ],
                );
              }
              return CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }
}
