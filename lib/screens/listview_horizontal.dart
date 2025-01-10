import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  const HorizontalList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Horizontal List'),
      ),
      body: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            height: 10,
            width: 160,
            color: Colors.red,
          ),
          Container(
            height: 10,
            width: 160,
            color: Colors.green,
          ),
          Container(
            height: 10,
            width: 160,
            color: Colors.blue,
          ),
          Container(
            height: 10,
            width: 160,
            color: Colors.yellow,
          ),
          Container(
            height: 10,
            width: 160,
            color: Colors.orange,
          ),
        ],
      ),
    );
  }
}
