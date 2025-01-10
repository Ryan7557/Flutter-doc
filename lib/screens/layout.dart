import 'package:flutter/material.dart';

class LayoutContainer extends StatelessWidget {
  const LayoutContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        height: 100,
        padding: EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                const Icon(Icons.call),
                Container(
                  padding: EdgeInsets.all(5),
                  child: Text('Call'),
                ),
              ],
            ),
            Column(
              children: [
                const Icon(Icons.compass_calibration),
                Container(
                  padding: EdgeInsets.all(5),
                  child: const Text('Route'),
                ),
              ],
            ),
            Column(
              children: [
                const Icon(Icons.share),
                Container(
                  padding: EdgeInsets.all(5),
                  child: Text('share'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
