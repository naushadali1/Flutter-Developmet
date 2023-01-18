import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI Application',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(
        title: '',
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text("BMI App"),
          centerTitle: true,
        ),
        body: Center(
          child: Container(
            width: 300,
            height: 300,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Color.fromARGB(255, 111, 110, 110)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(
                    labelText: "Enter your Weight",
                    prefix: const Icon(Icons.line_weight_rounded),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(2)),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                TextField(
                  decoration: InputDecoration(
                    labelText: "Enter your heght in Feet",
                    prefix: Icon(Icons.line_weight_rounded),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(2)),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                TextField(
                  decoration: InputDecoration(
                    labelText: "Enter your Height in Inches",
                    prefix: Icon(Icons.line_weight_rounded),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(2)),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                ElevatedButton(onPressed: () {}, child: Text("Calculate")),
                SizedBox(
                  height: 5,
                ),
                Text(" Your BMI Is ")
              ],
            ),
          ),
        ));
  }
}
