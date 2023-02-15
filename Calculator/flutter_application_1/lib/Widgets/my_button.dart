import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  String title;
  Color color;
  final VoidCallback onPress;
  MyButton(
      {super.key,
      required this.title,
      this.color: Colors.grey,
      required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onPress,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: Container(
              height: 60,
              decoration: BoxDecoration(
                  color: color,
                  border: Border.all(color: Colors.grey),
                  shape: BoxShape.circle),
              child: Center(child: Text(title))),
        ),
      ),
    );
  }
}
