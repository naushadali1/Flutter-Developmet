import 'package:flutter/material.dart';

class Rows extends StatelessWidget {
  const Rows({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Rows"),
          backgroundColor: Colors.red[600],
        ),
        body: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("data"),
              FloatingActionButton(
                onPressed: () {},
                child: Text("click"),
              ),
              Text("Hello"),
            ],
          ),
          color: Color.fromARGB(255, 209, 227, 243),
          padding: EdgeInsets.all(14.0),
          margin: EdgeInsets.all(30.0),
        ),
      ),
    );
  }
}
