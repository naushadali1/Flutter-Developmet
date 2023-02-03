import 'package:flutter/material.dart';

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
                  Rows(),
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
                  Email(),

                  const SizedBox(
                    height: 7,
                  ),
                  Buttons(),
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

class Email extends StatelessWidget {
  const Email({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 9),
        child: TextFormField(
            decoration: InputDecoration(
          hintText: 'Email',

          // ignore: prefer_const_constructors
          prefixIcon: Icon(
            Icons.email_rounded,
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

class Rows extends StatelessWidget {
  const Rows({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Image(
          image: AssetImage('images/logo.png'),
          height: 50,
          width: 50,
        ),
        const SizedBox(width: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Center(
              child: Text(
                "Reset Password",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Rubik Medium'),
              ),
            ),
            Center(
              child: Text(
                "Welcome",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Rubik Medium',
                    color: Colors.orange),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

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
      child: const Text("Send Password to Email"),
    );
  }
}
