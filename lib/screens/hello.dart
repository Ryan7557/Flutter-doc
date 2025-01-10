import 'package:flutter/material.dart';

class HelloWorld extends StatelessWidget {
  const HelloWorld({super.key});

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        leading: const IconButton(
          onPressed: null,
          icon: Icon(
            Icons.menu,
            color: Colors.white,
          ),
        ),
        title: const Text(
          'Hello, World',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Container(
        height: h,
        width: w,
        // child: Row(
        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //   crossAxisAlignment: CrossAxisAlignment.center,
        //   children: [
        //     Container(
        //       height: 60,
        //       width: 60,
        //       color: Colors.white,
        //     ),
        //     Container(
        //       height: 60,
        //       width: 60,
        //       color: Colors.blue,
        //     ),
        //     Container(
        //       height: 60,
        //       width: 60,
        //       color: Colors.yellow,
        //     ),
        //     Container(
        //       height: 60,
        //       width: 60,
        //       color: Colors.green,
        //     ),
        //     Container(
        //       height: 60,
        //       width: 60,
        //       color: Colors.red,
        //     ),
        //   ],
        // ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.yellow,
              ),
              height: 60,
              width: 60,
            ),
            Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.purple,
              ),
              height: 60,
              width: 60,
            ),
            Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.green,
              ),
              height: 60,
              width: 60,
            ),
            Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.blue,
              ),
              height: 60,
              width: 60,
            ),
            Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              height: 60,
              width: 60,
            ),
            Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.red,
              ),
              height: 60,
              width: 60,
            ),
          ],
        ),
      ),
    );
  }
}
