import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

class HomeState extends State<MyHomePage> {
  var no1cont = TextEditingController();
  var no2cont = TextEditingController();
  var result = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Basic Calculator"),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          width: 400,
          height: 300,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 194, 184, 184),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Calculator',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
                  ),
                  TextField(
                    controller: no1cont,
                    keyboardType: TextInputType.number,
                  ),
                  TextField(
                    controller: no2cont,
                    keyboardType: TextInputType.number,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              var no1 = int.parse(no1cont.text.toString());
                              var no2 = int.parse(no2cont.text.toString());
                              var sum = no1 + no2;
                              result = "the Sum of $no1 and $no2 is $sum";
                              setState(() {});
                            },
                            child: Text('Addition')),
                        ElevatedButton(
                            onPressed: () {
                              var no1 = int.parse(no1cont.text.toString());
                              var no2 = int.parse(no2cont.text.toString());
                              var subs = no1 - no2;
                              result =
                                  "the subtraction of $no1 and $no2 is $subs";
                              setState(() {});
                            },
                            child: Text('Sub')),
                        ElevatedButton(
                            onPressed: () {
                              var no1 = int.parse(no1cont.text.toString());
                              var no2 = int.parse(no2cont.text.toString());
                              var prod = no1 * no2;
                              result = "the product of $no1 and $no2 is $prod";
                              setState(() {});
                            },
                            child: Text('Mult')),
                        ElevatedButton(
                            onPressed: () {
                              var no1 = int.parse(no1cont.text.toString());
                              var no2 = int.parse(no2cont.text.toString());
                              var div = no1 / no2;
                              result =
                                  "the division of $no1 and $no2 is ${div.toStringAsFixed(2)}";
                              setState(() {});
                            },
                            child: Text('Divi')),
                      ],
                    ),
                  ),
                  Text(
                    '$result',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
