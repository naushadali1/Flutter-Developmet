import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Random randomNumber = Random();
  int a = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lottery App"),
        centerTitle: true,
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        const Text(
          "Lottery winning number is 5",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 10,
        ),
        Center(
          child: Container(
              height: 200,
              width: 250,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 158, 174, 182),
                  borderRadius: BorderRadius.circular(7),
                  border: Border.all(color: Colors.black, width: 2)),
              child: a == 5 ? WinPage(a) : LossesPage(a)),
        ),
        // ignore: prefer_const_constructors
        SizedBox(
          height: 7,
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
              a = randomNumber.nextInt(7);
            });
          },
          child: const Text("Play"),
        ),
      ]),
    );
  }

  // ignore: non_constant_identifier_names
  Column WinPage(int a) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Icon(
          Icons.done_all_rounded,
          color: Color.fromARGB(255, 0, 255, 8),
        ),
        const SizedBox(
          height: 5,
        ),
        // ignore: prefer_const_constructors
        Text(
          "Congratulation You Win the Match \n the number is $a",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}

// ignore: non_constant_identifier_names
Column LossesPage(int a) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      // ignore: prefer_const_constructors
      Icon(
        Icons.error,
        color: Color.fromARGB(255, 252, 17, 0),
      ),
      // ignore: prefer_const_constructors
      SizedBox(
        height: 5,
      ),
      Text(
        "Better luck next time \n Your number is $a",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    ],
  );
}
