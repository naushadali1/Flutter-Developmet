import 'package:flutter/material.dart';
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
        home: const LoginPage());
  }
}
