import 'package:flutter/material.dart';

class Passwords extends StatelessWidget {
  const Passwords({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 9),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: 'Password',
          // ignore: prefer_const_constructors
          prefixIcon: Icon(
            Icons.password_sharp,
            color: Colors.black,
          ),
          suffixIcon: const Icon(
            Icons.visibility_off_outlined,
            color: Colors.black,
          ),
          filled: true,
          fillColor: const Color.fromARGB(255, 208, 214, 217),
          border: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.black),
              borderRadius: BorderRadius.circular(10)),
        ),
      ),
    );
  }
}
