import 'package:flutter/material.dart';

class TextAndImage extends StatelessWidget {
  const TextAndImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        // child: Row(
        //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //   children: [
        //     Container(
        //       height: 70,
        //       width: 70,
        //       child: Image.asset(
        //         'images/trees.jpg',
        //         fit: BoxFit.cover,
        //       ),
        //     ),
        //     Container(
        //       height: 70,
        //       width: 70,
        //       child: Image.asset(
        //         'images/city.jpg',
        //         fit: BoxFit.cover,
        //       ),
        //     ),
        //     Container(
        //       height: 70,
        //       width: 70,
        //       child: Image.asset(
        //         'images/cityTrees.jpg',
        //         fit: BoxFit.cover,
        //       ),
        //     ),
        //   ],
        // ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 70,
              width: 70,
              child: Image.asset(
                'images/trees.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              height: 70,
              width: 70,
              child: Image.asset(
                'images/trees.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              height: 70,
              width: 70,
              child: Image.asset(
                'images/trees.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
