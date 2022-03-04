import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class TabBarViewScreen extends StatefulWidget {
  const TabBarViewScreen({Key? key}) : super(key: key);

  @override
  _TabBarViewScreenState createState() => _TabBarViewScreenState();
}

class _TabBarViewScreenState extends State<TabBarViewScreen>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TabBarView'),
        bottom: TabBar(
          controller: _tabController,
          tabs: <Widget>[
            Tab(
              child: Icon(Icons.star),
            ),
            Tab(
              child: Icon(Icons.book),
            ),
            Tab(
              child: Icon(Icons.storage),
            ),
            Tab(
              child: Icon(Icons.face),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        physics: AlwaysScrollableScrollPhysics(),
        dragStartBehavior: DragStartBehavior.start,
        children: <Widget>[
          Container(
            color: Colors.black45,
            child: Center(
              child: Icon(Icons.star),
            ),
          ),
          Container(
            color: Colors.white,
            child: Center(
              child: Icon(Icons.book),
            ),
          ),
          Container(
            color: Colors.grey,
            child: Center(
              child: Icon(Icons.storage),
            ),
          ),
          Container(
            color: Colors.yellow,
            child: Center(
              child: Icon(Icons.face),
            ),
          ),
        ],
      ),
    );
  }
}
