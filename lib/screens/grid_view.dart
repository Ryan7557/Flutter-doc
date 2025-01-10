import 'package:flutter/material.dart';

class BuildGrid extends StatelessWidget {
  const BuildGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildGrid(),
    );
  }

  Widget _buildGrid() => GridView.extent(
        maxCrossAxisExtent: 150,
        padding: const EdgeInsets.all(4),
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        children: _buildGridTileList(8),
      );

  List<Container> _buildGridTileList(int count) => List.generate(
        count,
        (i) => Container(
            child: Image.asset(
          'images/pic$i.jpg',
          fit: BoxFit.cover,
        )),
      );
}
