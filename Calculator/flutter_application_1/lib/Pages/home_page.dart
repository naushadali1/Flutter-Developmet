import 'package:flutter/material.dart';
import 'package:flutter_application_1/Widgets/my_button.dart';
import 'package:math_expressions/math_expressions.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var userInput = '';
  var result = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Text(userInput.toString()),
                Text(result),
              ],
            ),
          )),
          Expanded(
            flex: 4,
            child: Column(children: [
              Row(
                children: [
                  MyButton(
                    title: "AC",
                    onPress: () {
                      userInput = '';
                      result = '';
                      setState(() {});
                    },
                  ),
                  MyButton(
                    title: "+/-",
                    onPress: () {
                      userInput += '-';
                      setState(() {});
                    },
                  ),
                  MyButton(
                    title: "%",
                    onPress: () {
                      userInput += '%';
                      setState(() {});
                    },
                  ),
                  MyButton(
                    title: "/",
                    color: Colors.amber,
                    onPress: () {
                      userInput += '/';
                      setState(() {});
                    },
                  ),
                ],
              ),
              Row(
                children: [
                  MyButton(
                    title: "7",
                    onPress: () {
                      userInput += '7';

                      setState(() {});
                    },
                  ),
                  MyButton(
                    title: "8",
                    onPress: () {
                      userInput += '8';
                      setState(() {});
                    },
                  ),
                  MyButton(
                    title: "9",
                    onPress: () {
                      userInput += '9';
                      setState(() {});
                    },
                  ),
                  MyButton(
                    title: "x",
                    color: Colors.amber,
                    onPress: () {
                      userInput += 'x';

                      setState(() {});
                    },
                  ),
                ],
              ),
              Row(
                children: [
                  MyButton(
                    title: "4",
                    onPress: () {
                      userInput += '4';
                      setState(() {});
                    },
                  ),
                  MyButton(
                    title: "5",
                    onPress: () {
                      userInput += '5';
                      setState(() {});
                    },
                  ),
                  MyButton(
                    title: "6",
                    onPress: () {
                      userInput += '6';
                      setState(() {});
                    },
                  ),
                  MyButton(
                    title: "-",
                    color: Colors.amber,
                    onPress: () {
                      userInput += '-';
                      setState(() {});
                    },
                  ),
                ],
              ),
              Row(
                children: [
                  MyButton(
                    title: "1",
                    onPress: () {
                      userInput += '1';
                      setState(() {});
                    },
                  ),
                  MyButton(
                    title: "2",
                    onPress: () {
                      userInput += '2';
                      setState(() {});
                    },
                  ),
                  MyButton(
                    title: "3",
                    onPress: () {
                      userInput += '3';
                      setState(() {});
                    },
                  ),
                  MyButton(
                    title: "+",
                    color: Colors.amber,
                    onPress: () {
                      userInput += '+';
                      setState(() {});
                    },
                  ),
                ],
              ),
              Row(
                children: [
                  MyButton(
                    title: "0",
                    onPress: () {
                      userInput += '0';
                      setState(() {});
                    },
                  ),
                  MyButton(
                    title: ".",
                    onPress: () {
                      userInput += '.';
                      setState(() {});
                    },
                  ),
                  MyButton(
                    title: "DEL",
                    onPress: () {
                      if (userInput == "") {
                      } else {
                        userInput =
                            userInput.substring(0, userInput.length - 1);
                      }

                      setState(() {});
                    },
                  ),
                  MyButton(
                    title: "=",
                    color: Colors.amber,
                    onPress: () {
                      if (userInput == '') {
                        userInput = result;
                      } else {
                        equalPress();
                      }

                      setState(() {});
                    },
                  ),
                ],
              ),
            ]),
          ),
        ],
      ),
    );
  }

  void equalPress() {
    String finalUserInput = userInput.replaceAll("x", "*");
    Parser p = Parser();
    Expression expression = p.parse(finalUserInput);
    ContextModel contextModel = ContextModel();
    double eval = expression.evaluate(EvaluationType.REAL, contextModel);
    result = eval.toString();
    userInput = result;
  }
}
