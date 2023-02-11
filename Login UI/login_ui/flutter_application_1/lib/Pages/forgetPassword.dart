// ignore: file_names
import 'package:flutter/material.dart';
import 'package:lgoin_ui/Pages/login.dart';
import 'package:lgoin_ui/widgets/email.dart';
import 'package:lgoin_ui/widgets/rowImage.dart';
import 'package:lgoin_ui/widgets/bottuns.dart';

class ForgetPage extends StatelessWidget {
  const ForgetPage({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Forget Password Page"),
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
                    Buttons(tittle: "Send Code"),
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
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const LoginPage()));
                        },
                        child: const Text(
                          "Back to Login Screen",
                          style: TextStyle(
                              fontSize: 9, fontFamily: 'Rubik Medium'),
                        ),
                      ),
                    ),
                  ],
                ),
              ))),
    );
  }
}
