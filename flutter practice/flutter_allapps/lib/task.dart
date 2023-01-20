import 'package:flutter/material.dart';

class FirstTask extends StatelessWidget {
  const FirstTask({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 49, 48, 48),
        appBar: AppBar(
          title: const Text("My Profile"),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 135, 134, 134),
          elevation: 0.0,
        ),
        body: Container(
          padding: const EdgeInsets.all(30.0),
          margin: const EdgeInsets.all(18.0),
          color: const Color.fromARGB(255, 39, 39, 39),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/image/myimg.jpg'),
                  radius: 30.0,
                ),
              ),
              Divider(
                height: 45.0,
                color: Colors.grey[800],
              ),

              const Text(
                "Name:",
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                  fontSize: 15.0,
                ),
              ),
              const Text(
                "Naushad Ali",
                style: TextStyle(
                  color: Color.fromARGB(255, 227, 230, 59),
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                ),
              ),
              // ignore: prefer_const_constructors
              SizedBox(
                height: 20.0,
              ),
              const Text(
                "Department",
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                  fontSize: 15.0,
                ),
              ),
              const Text(
                "Software Engineering",
                style: TextStyle(
                  color: Color.fromARGB(255, 227, 230, 59),
                  letterSpacing: 2.0,
                  fontSize: 25.0,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  // ignore: prefer_const_constructors
                  Icon(
                    Icons.email,
                    color: Colors.grey[300],
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    "nashadaliu585@gmail.com",
                    style: TextStyle(
                      color: Colors.grey[300],
                      letterSpacing: 2.0,
                      fontSize: 15.0,
                    ),
                  ),
                ],
              ),

              SizedBox(
                height: 15,
              ),
              const Text(
                "Contact",
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                  fontSize: 15.0,
                ),
              ),
              const Text(
                "03045313366",
                style: TextStyle(
                  color: Color.fromARGB(255, 227, 230, 59),
                  letterSpacing: 2.0,
                  fontSize: 25.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
