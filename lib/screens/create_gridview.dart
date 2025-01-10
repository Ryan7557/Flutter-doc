import 'package:flutter/material.dart';

class BuildGridView extends StatelessWidget {
  const BuildGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Grid List'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: List.generate(50, (index) {
          return Center(
            child: Text(
              'Item $index',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          );
        }),
      ),
    );
  }
}
