import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  const Buttons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      // ignore: prefer_const_constructors
      style: ButtonStyle(),
      child: const Text("Login"),
    );
  }
}
