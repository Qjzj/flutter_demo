import 'package:flutter/material.dart';
import 'chats.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {

  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController  = TabController(initialIndex: 0, length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Row(
          children: <Widget>[
            Icon(Icons.local_car_wash),
            Text('北京', style: TextStyle(fontSize: 16),),
          ],
        ),
        title: Text('首页'),
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: <Widget>[
            Tab(
              text: 'CHATS',
            ),
            Tab(
              text: 'STATUS',
            ),
            Tab(
              text: 'ADDRESS',
            ),
            Tab(
              text: 'MATERIRAL',
            ),
            Tab(
              text: 'COMPUTED',
            )
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          Chats(),
          Center(child: Text('2'),),
          Center(child: Text('3'),),
          Center(child: Text('4'),),
          Center(child: Text('5'),),
        ],
      ),
    );
  }
}