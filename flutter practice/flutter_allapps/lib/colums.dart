import 'package:flutter/material.dart';

class Columns extends StatelessWidget {
  const Columns({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Couloms"),
          centerTitle: true,
          backgroundColor: Colors.red[600],
        ),
        body: Container(
          color: const Color.fromARGB(255, 209, 227, 243),
          padding: const EdgeInsets.all(13.0),
          margin: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                color: const Color.fromARGB(255, 255, 213, 121),
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(12.0),
                      margin: const EdgeInsets.all(6.0),
                      color: Colors.amber,
                      child: const Text("First"),
                    ),
                    Container(
                      padding: const EdgeInsets.all(12.0),
                      margin: const EdgeInsets.all(6.0),
                      color: const Color.fromARGB(255, 7, 255, 114),
                      child: const Text("Second"),
                    ),
                    Container(
                      padding: const EdgeInsets.all(12.0),
                      margin: const EdgeInsets.all(6.0),
                      color: const Color.fromARGB(255, 253, 58, 58),
                      child: const Text("Third"),
                    ),
                  ],
                ),
              ),
              Container(
                color: const Color.fromARGB(255, 120, 236, 242),
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(12.0),
                      margin: const EdgeInsets.all(6.0),
                      color: Colors.amber,
                      child: const Text("First"),
                    ),
                    Container(
                      padding: const EdgeInsets.all(12.0),
                      margin: const EdgeInsets.all(6.0),
                      color: const Color.fromARGB(255, 7, 255, 114),
                      child: const Text("Second"),
                    ),
                    Container(
                      padding: const EdgeInsets.all(12.0),
                      margin: const EdgeInsets.all(6.0),
                      color: const Color.fromARGB(255, 253, 58, 58),
                      child: const Text("Third"),
                    ),
                  ],
                ),
              ),
              Container(
                color: const Color.fromARGB(255, 234, 138, 237),
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(12.0),
                      margin: const EdgeInsets.all(6.0),
                      color: Colors.amber,
                      child: const Text("First"),
                    ),
                    Container(
                      padding: const EdgeInsets.all(12.0),
                      margin: const EdgeInsets.all(6.0),
                      color: const Color.fromARGB(255, 7, 255, 114),
                      child: const Text("Second"),
                    ),
                    Container(
                      padding: const EdgeInsets.all(12.0),
                      margin: const EdgeInsets.all(6.0),
                      color: const Color.fromARGB(255, 253, 58, 58),
                      child: const Text("Third"),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
