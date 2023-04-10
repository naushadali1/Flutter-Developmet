import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Buttons extends StatelessWidget {
  final String tittle;
  VoidCallback onPress;
  Buttons({super.key, required this.tittle, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPress,

        // ignore: prefer_const_constructors
        style: ButtonStyle(),
        child: Text(
          tittle,
        ));
  }
}
