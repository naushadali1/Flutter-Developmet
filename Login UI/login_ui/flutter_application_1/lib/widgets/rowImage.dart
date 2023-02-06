import 'package:flutter/material.dart';

class RowImage extends StatelessWidget {
  const RowImage({
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
                "Login Page",
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
