import 'package:flutter/material.dart';

class Setting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('设置')
      ),
      body: Center(
        child: Text('设置中心', style: TextStyle(fontSize: 20))
      )
    );
  }
}