import 'package:flutter/material.dart';

class ContainerPractice extends StatelessWidget {
  const ContainerPractice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Layout Practice'),
        backgroundColor: Colors.purple,
      ),
      body: _buildImageColumn(),
    );
  }

  Widget _buildImageColumn() {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.black26,
      ),
      child: Column(
        children: [
          _buildImageRow(1),
          _buildImageRow(3),
        ],
      ),
    );
  }

  Widget _buildDecoratedImage(int imageIndex) => Expanded(
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              width: 10,
              color: Colors.black38,
            ),
          ),
          margin: const EdgeInsets.all(4),
          child: Image.asset(
            'images/pic$imageIndex.jpg',
          ),
        ),
      );

  Widget _buildImageRow(int imageIndex) => Row(
        children: [
          _buildDecoratedImage(imageIndex),
          _buildDecoratedImage(imageIndex + 1),
        ],
      );
}
