import 'package:flutter/material.dart';

class RefreshIndicatorScreen extends StatefulWidget {
  const RefreshIndicatorScreen({Key? key}) : super(key: key);

  @override
  _RefreshIndicatorScreenState createState() => _RefreshIndicatorScreenState();
}

class _RefreshIndicatorScreenState extends State<RefreshIndicatorScreen> {
  final GlobalKey<RefreshIndicatorState> _refreshIndicatorKey =
      new GlobalKey<RefreshIndicatorState>();
  ImageProvider myImage =
      NetworkImage("https://thispersondoesnotexist.com/image");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Refresh Indicator'),
      ),
      body: RefreshIndicator(
        key: _refreshIndicatorKey,
        displacement: 100,
        backgroundColor: Colors.purple,
        color: Colors.amber,
        notificationPredicate: (ScrollNotification not) {
          print(not);
          return true;
        },
        child: ListView(
          physics: const AlwaysScrollableScrollPhysics(),
          children: <Widget>[
            Image(image: myImage),
          ],
        ),
        onRefresh: _refresh,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _update2,
        child: Icon(Icons.refresh),
      ),
    );
  }

  Future<void> _refresh() async {
    final milleseconds = DateTime.now().microsecondsSinceEpoch;
    setState(() {
      myImage = NetworkImage(
          "https://thispersondoesnotexist.com/image?fake=${milleseconds}");
    });
    await Future.delayed(Duration(seconds: 1));
  }

  void _update2() {
    _refreshIndicatorKey.currentState?.show();
  }
}
