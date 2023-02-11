import 'package:flutter/material.dart';
import 'package:lgoin_ui/Pages/login.dart';
import 'package:lgoin_ui/widgets/bottuns.dart';
import 'package:lgoin_ui/widgets/email.dart';
import 'package:lgoin_ui/widgets/rowImage.dart';
import 'package:lgoin_ui/widgets/passwords.dart';
import 'package:lgoin_ui/widgets/name.dart';
import 'package:lgoin_ui/widgets/phone.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Signup Page"),
          centerTitle: true,
        ),
        body: Center(
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
                    const RowImage(),
                    const SizedBox(
                      height: 16,
                    ),
                    // ignore: prefer_const_constructors
                    Center(
                      child: const Text(
                        "Signup",
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
                      "Hello to Signup page welocinm to \n your firt visirt in our website",
                      style: TextStyle(fontSize: 14),
                    ),
                    // ignore: prefer_const_constructors
                    SizedBox(
                      height: 7,
                    ),
                    const Names(),
                    const SizedBox(
                      height: 10,
                    ),
                    const Email(),
                    const SizedBox(
                      height: 10,
                    ),
                    const Phone(),
                    const SizedBox(
                      height: 10,
                    ),
                    const Passwords(),

                    const SizedBox(
                      height: 4,
                    ),

                    const Buttons(
                      tittle: "Sign Up",
                    ),
                    // ignore: prefer_const_constructors
                    SizedBox(
                      height: 10,
                    ),
                    // ignore: prefer_const_constructors
                    Center(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const LoginPage()));
                        },
                        child: const Text(
                          "Do you have already Account? Login Page",
                          style: TextStyle(
                              fontSize: 9, fontFamily: 'Rubik Medium'),
                        ),
                      ),
                    ),
                  ],
                ),
              )),
        ));
    ;
  }
}
