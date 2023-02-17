import 'package:flutter/material.dart';
import 'package:lgoin_ui/Pages/splash_screen.dart';
import 'login.dart';
import 'signup.dart';
import 'forgetPassword.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.orange,
        ),
        debugShowCheckedModeBanner: false,
        home: const SplashScreen());
  }
}
