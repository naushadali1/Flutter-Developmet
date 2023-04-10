import 'dart:async';
import 'package:flutter/material.dart';
import 'package:lgoin_ui/Pages/home_page.dart';
import 'package:lgoin_ui/Pages/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    isLogin();
  }

  void isLogin() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    bool isLogin = sp.getBool('isLogin') ?? false;

    if (isLogin) {
      Timer(Duration(seconds: 4), () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomePage()));
      });
    } else {
      Timer(Duration(seconds: 4), () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => LoginPage()));
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Container(
      height: 40,
      width: 40,
      color: Color.fromARGB(255, 160, 135, 98),
      child: Icon(Icons.login_outlined),
    )));
  }
}
