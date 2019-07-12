import 'package:flutter/material.dart';
import 'pages/home/home_screen.dart';
import 'pages/category/home_category.dart';
import 'pages/message/home_message.dart';
import 'pages/mine/home_mine.dart';
import 'pages/mine/setting.dart';

void main () => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'router_bottomvavigation',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.purpleAccent,
      ),
      home: MainWrap(),
      routes: {
        'setting': (context) => Setting(),
      },
    );
  }
}

class MainWrap extends StatefulWidget {
  @override
  _MainWrapState createState() => _MainWrapState();
}

class _MainWrapState extends State<MainWrap> {

  int _currentIndex;
  List <String> majorRoutes;
  List <Widget> views;
  @override
  void initState() {
    super.initState();
    _currentIndex = 0;
    majorRoutes = ['home', 'category', 'message', 'mine'];
    views = List();
    views..add(HomeScreen())..add(CategoryScreen())..add(MessageScreen())..add(MineScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: views[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 12.0,
        backgroundColor: Colors.purpleAccent,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.orange,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('首页')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            title: Text('分类')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            title: Text('消息')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('我的')
          )
        ],
        onTap: (int index) {
          setState(() {
           _currentIndex = index;
          //  Navigator.pushNamed(context, majorRoutes[index]);
          });
        },
      ),
    );
  }
}