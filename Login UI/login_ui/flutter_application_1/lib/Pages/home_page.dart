import 'package:flutter/material.dart';
import 'package:lgoin_ui/Pages/login.dart';
import 'package:lgoin_ui/widgets/bottuns.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text("Home Page")),
          SizedBox(
            height: 10,
          ),
          Buttons(
              tittle: "Log Out",
              onPress: () async {
                SharedPreferences sp = await SharedPreferences.getInstance();
                sp.clear();
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginPage()));
              })
        ],
      ),
    );
  }
}
