import 'package:flutter/material.dart';
import 'package:lgoin_ui/Pages/forgetPassword.dart';
import 'package:lgoin_ui/Pages/home_page.dart';
import 'package:lgoin_ui/Pages/signup.dart';
import 'package:lgoin_ui/widgets/bottuns.dart';
import 'package:lgoin_ui/widgets/rowImage.dart';
import 'package:lgoin_ui/widgets/passwords.dart';
// import 'package:lgoin_ui/widgets/passwords.dart';
import 'package:lgoin_ui/widgets/email.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
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
                        "Login",
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
                      "Hello to mylogin page welocinme to \n your firt visirt in our website",
                      style: TextStyle(fontSize: 14),
                    ),
                    // ignore: prefer_const_constructors
                    SizedBox(
                      height: 7,
                    ),
                    const Email(),
                    const SizedBox(
                      height: 10,
                    ),
                    const Passwords(),

                    const SizedBox(
                      height: 4,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ForgetPage()));
                      },
                      child: const Text(
                        "Forgot Password",
                      ),
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    Buttons(
                      tittle: "Login",
                      onPress: () async {
                        SharedPreferences sp =
                            await SharedPreferences.getInstance();
                        sp.setBool('isLogin', true);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePage()));
                      },
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
                                builder: (context) => const SignupPage(),
                              ));
                        },
                        child: const Text(
                          "Don't have an Account? Sign Up",
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
