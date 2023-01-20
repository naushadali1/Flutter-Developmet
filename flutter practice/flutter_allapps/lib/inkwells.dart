import 'package:flutter/material.dart';

class Inkwells extends StatelessWidget {
  const Inkwells({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('linkwell widget'),
        ),
        body: InkWell(
          onLongPress: (() {
            print('long pressed');
          }),
          onDoubleTap: (() {
            print('double tapped');
          }),
          onTap: (() {
            print('Taped');
          }),
          child: Center(
            child: Container(
              color: Color.fromARGB(255, 0, 179, 255),
              width: 300,
              height: 300,
              // ignore: prefer_const_constructors
              child: Center(
                  child: const Text(
                'Click Container',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 3,
                ),
              )),
            ),
          ),
        ),
      ),
    );
  }
}
