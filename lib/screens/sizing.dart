import 'package:flutter/material.dart';

class SizingWidgets extends StatelessWidget {
  const SizingWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        // crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          // Expanded(child: Image.asset('images/city.jpg')),
          // Expanded( flex: 2, child: Image.asset('images/cityTrees.jpg')),
          // Expanded(child: Image.asset('images/city.jpg')),
          Icon(Icons.star, color: Colors.green[500]),
          Icon(Icons.star, color: Colors.green[500]),
          Icon(Icons.star, color: Colors.green[500]),
          const Icon(Icons.star, color: Colors.black),
          const Icon(Icons.star, color: Colors.black),
        ],
      ),
    );
  }
}
