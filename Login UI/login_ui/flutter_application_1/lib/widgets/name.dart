import 'package:flutter/material.dart';

class Names extends StatelessWidget {
  const Names({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 9),
        child: TextFormField(
            decoration: InputDecoration(
          hintText: 'Names',

          // ignore: prefer_const_constructors
          prefixIcon: Icon(
            Icons.person,
            color: Colors.black,
          ),
          filled: true,
          fillColor: const Color.fromARGB(255, 208, 214, 217),
          border: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.black),
              borderRadius: BorderRadius.circular(10)),
        )));
  }
}
