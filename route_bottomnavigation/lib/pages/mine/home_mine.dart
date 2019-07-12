import 'package:flutter/material.dart';

class MineScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: RaisedButton(
          child: Text('??'),
          textColor: Colors.white,
          color: Colors.lightBlue,
          onPressed: () {
            Navigator.of(context).pushNamed('setting');
          }
        ),
      ),
    );
  }
}