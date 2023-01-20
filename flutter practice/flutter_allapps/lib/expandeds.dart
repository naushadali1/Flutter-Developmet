import 'package:flutter/material.dart';

class Expendeds extends StatelessWidget {
  const Expendeds({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Expanded Widget"),
          backgroundColor: Color.fromARGB(255, 255, 100, 97),
          centerTitle: true,
        ),
        body: Container(
          margin: EdgeInsets.all(30.0),
          padding: EdgeInsets.all(12.0),
          color: Color.fromARGB(255, 199, 236, 240),
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  color: Colors.amber,
                  padding: const EdgeInsets.all(4.0),
                  child: const Text(
                    "ALi",
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  color: const Color.fromARGB(255, 7, 255, 73),
                  padding: const EdgeInsets.all(4.0),
                  child: const Text("Hassan"),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  color: Color.fromARGB(255, 248, 42, 66),
                  padding: const EdgeInsets.all(4.0),
                  child: const Text("Mehdi"),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: const Color.fromARGB(255, 236, 54, 51),
          child: const Text("Click"),
        ),
      ),
    );
  }
}

class Expended {}
