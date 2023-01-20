import 'package:flutter/material.dart';

class Listviews extends StatelessWidget {
  const Listviews({super.key});

  @override
  Widget build(BuildContext context) {
    var arrNames = [
      'Naushad',
      'Ali',
      'Sarwar',
      'Aslam',
      'akram',
      'Yasir',
      'salman',
      'Haider'
    ];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 253, 253, 253),
        appBar: AppBar(
          title: const Text('List View'),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 150, 196, 150),
          elevation: 0.0,
        ),
        body: ListView.separated(
          itemCount: arrNames.length,
          separatorBuilder: (context, index) {
            // ignore: prefer_const_constructors
            return ListTile(
              // ignore: prefer_const_constructors
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/image/myimg.jpg'),
                backgroundColor: Color.fromARGB(255, 87, 84, 84),
              ),
              title: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(arrNames[index]),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text('hello ${arrNames[index]}'),
              ),
              // ignore: prefer_const_constructors
              trailing: Card(
                  elevation: 3,
                  shadowColor: Colors.grey,
                  child: const Icon(Icons.add)),
            );
          },
          itemBuilder: ((context, index) {
            // ignore: prefer_const_constructors
            return Padding(
              padding: const EdgeInsets.all(12.0),
            );
          }),
        ),
      ),
    );
  }
}
