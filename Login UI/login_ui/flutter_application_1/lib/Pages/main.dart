import 'package:flutter/material.dart';
import 'login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: Scaffold(
          appBar: AppBar(
            title: const Text("Welcome to DolDol"),
            centerTitle: true,
          ),
          body: SingleChildScrollView(
            child: Column(
              children: const [
                LoginPage(),
              ],
            ),
          )),
    );
  }
}