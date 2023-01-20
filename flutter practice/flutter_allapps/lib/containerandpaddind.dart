import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Container and padding"),
          backgroundColor: Colors.red[600],
        ),
        body: Container(
          padding: EdgeInsets.fromLTRB(30.0, 49.0, 30.0, 49.0),
          margin: EdgeInsets.all(50.0),
          color: Color.fromARGB(255, 239, 142, 141),
          child: Text("data"),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Text("Click"),
          backgroundColor: Color.fromARGB(255, 236, 54, 51),
        ),
      ),
    );
  }
}
