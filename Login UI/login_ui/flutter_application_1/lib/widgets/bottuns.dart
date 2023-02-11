import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  final String tittle;
  const Buttons({super.key, required this.tittle});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        // ignore: prefer_const_constructors
        style: ButtonStyle(),
        child: Text(
          tittle,
        ));
  }
}
