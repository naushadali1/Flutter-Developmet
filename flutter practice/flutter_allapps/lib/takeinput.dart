import 'dart:js';

import 'package:flutter/material.dart';

class TakeInput extends StatefulWidget {
  const TakeInput({Key? key}) : super(key: key);

  @override
  // ignore: no_logic_in_create_state
  State<StatefulWidget> createState() {
    // ignore: todo
    // TODO: implement createState
    throw UnimplementedError();
  }

  Widget build(BuildContext context) {
    const color2 = Color.fromARGB(255, 167, 191, 211);
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Input Feild'),
        ),
        body: Container(
          width: 100,
          height: 100,
          color: color2,
          child: TextField(
            decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(3)),
            ),
          ),
        ),
      ),
    );
  }
}
