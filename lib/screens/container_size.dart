import 'package:flutter/material.dart';

class ContainerSize extends StatelessWidget {
  const ContainerSize({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Container playAround'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Center(
        child: Container(
          // height: 100,
          // width: 100,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
          ),
          padding: EdgeInsets.all(25.0),
          margin: EdgeInsets.all(40.0),
          child: const Center(
            child: Text(
              'Cole Palmer',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
      ),
    );
  }
}
