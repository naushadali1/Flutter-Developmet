import 'package:flutter/material.dart';
import 'package:shalow_tree/Widgets/row_and_stack.dart';
import 'package:shalow_tree/Widgets/rowandcolumn.dart';
import 'package:shalow_tree/Widgets/rowwidget.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Shallow Tree")),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const RowWidget(),
              const Padding(
                padding: EdgeInsets.all(16.0),
              ),
              const RowAndColumn(),
              const Padding(padding: EdgeInsets.all(16)),
              const RowAndStack(),
              const Divider(),
              const Text('End of the Line'),
            ],
          ),
        ),
      )),
    );
  }
}
