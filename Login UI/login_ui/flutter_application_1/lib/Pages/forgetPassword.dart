// ignore: file_names
import 'package:flutter/material.dart';
import 'package:lgoin_ui/widgets/email.dart';
import 'package:lgoin_ui/widgets/rowImage.dart';
import 'package:lgoin_ui/widgets/bottuns.dart';

class ForgetPage extends StatelessWidget {
  const ForgetPage({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            height: 400, //height of container
            width: 400,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7),
              color: const Color.fromARGB(255, 208, 214, 217),
            ),
            child: SingleChildScrollView(
              child: Column(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  RowImage(),
                  const SizedBox(
                    height: 16,
                  ),
                  // ignore: prefer_const_constructors
                  Center(
                    child: const Text(
                      "Forget Your Password",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Rubik Medium'),
                    ),
                  ),
                  // ignore: prefer_const_constructors
                  SizedBox(
                    height: 6,
                  ),
                  const Text(
                    "Hello reset your password",
                    style: TextStyle(fontSize: 14),
                  ),
                  // ignore: prefer_const_constructors
                  SizedBox(
                    height: 7,
                  ),
                  const Email(),

                  const SizedBox(
                    height: 7,
                  ),
                  // const Buttons(),
                  // ignore: prefer_const_constructors
                  SizedBox(
                    height: 10,
                  ),
                  // ignore: prefer_const_constructors
                  Center(
                    child: const Text(
                      "Back to Login Screen",
                      style: TextStyle(fontSize: 9, fontFamily: 'Rubik Medium'),
                    ),
                  ),
                ],
              ),
            )));
  }
}

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

