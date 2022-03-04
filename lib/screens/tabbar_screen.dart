import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class TabBarScreen extends StatefulWidget {
  const TabBarScreen({Key? key}) : super(key: key);

  @override
  _TabBarScreenState createState() => _TabBarScreenState();
}

class _TabBarScreenState extends State<TabBarScreen>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  int _currentTabIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
    _tabController?.addListener(() {
      setState(() {
        _currentTabIndex != _tabController?.index;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TabBar'),
        bottom: TabBar(
            controller: _tabController,
            dragStartBehavior: DragStartBehavior.start,
            indicator: BoxDecoration(
                color: Colors.deepOrange,
                border: Border.all(width: 5, color: Colors.green)),
            indicatorColor: Colors.green,
            indicatorPadding: EdgeInsets.all(1),
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorWeight: 10,
            isScrollable: false,
            labelColor: Colors.yellowAccent,
            labelPadding: EdgeInsets.all(6),
            unselectedLabelColor: Colors.blueGrey,
            unselectedLabelStyle: TextStyle(fontSize: 20),
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
            ]),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: buildTabBarView(),
      floatingActionButton: buildFloatingActionButton(),
      bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 5,
          child: TabBar(
              controller: _tabController,
              dragStartBehavior: DragStartBehavior.start,
              indicator: BoxDecoration(
                  color: Colors.deepOrange,
                  border: Border.all(width: 5, color: Colors.green)),
              indicatorColor: Colors.green,
              indicatorPadding: EdgeInsets.all(1),
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorWeight: 10,
              isScrollable: false,
              labelColor: Colors.yellowAccent,
              labelPadding: EdgeInsets.all(6),
              unselectedLabelColor: Colors.blueGrey,
              unselectedLabelStyle: TextStyle(fontSize: 20),
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
              ])),
    );
  }

  FloatingActionButton buildFloatingActionButton() {
    return FloatingActionButton(
      child: Icon(Icons.add),
      onPressed: () {},
      backgroundColor: Colors.deepOrangeAccent,
      foregroundColor: Colors.black,
    );
  }

  TabBarView buildTabBarView() {
    return TabBarView(
      controller: _tabController,
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
    );
  }
}
