import 'package:flutter/material.dart';
import '../../api/ajax.dart';
import 'dart:convert';

class Chats extends StatefulWidget {
  @override
  _ChatsState createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {

  

  @override
  void initState() {
    super.initState();
    Ajax.get('https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json', (data) {
      
      print(data.pokemon);
      // List list = data.pokemon;
    
      // print(list);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text('CHATS'),),
    );
  }
}