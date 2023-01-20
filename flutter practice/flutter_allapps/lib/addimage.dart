import 'dart:ui';

import 'package:flutter/material.dart';

class AddImage extends StatelessWidget {
  const AddImage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('data'),
        ),
        // ignore: prefer_const_constructors
        body: Container(
          margin: const EdgeInsets.fromLTRB(150.0, 100.0, 0.0, 0.0),
          width: 150,
          height: 150,
          child: Center(
            child: Image.asset('assets/image/myimg.jpg'),
          ),
        ),
      ),
    );
  }
}
