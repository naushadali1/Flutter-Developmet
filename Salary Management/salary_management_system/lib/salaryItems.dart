// ignore: file_names
import 'package:flutter/material.dart';
import 'templatePage.dart';

class SalaryItems extends StatefulWidget {
  const SalaryItems({super.key});

  @override
  State<SalaryItems> createState() => _SalaryItemsState();
}

class _SalaryItemsState extends State<SalaryItems> {
  var contid = TextEditingController();
  var contbps = TextEditingController();
  var contdep = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Salary Items"),
        centerTitle: true,
      ),
      body: Container(
        margin: const EdgeInsets.only(top: 10),
        decoration: BoxDecoration(border: Border.all(width: 1)),
        child: Center(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            const Text(
              'Salary Items',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.all(6),
                  child: const Center(
                      child: Text(
                    'ID',
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  )),
                ),
                Container(
                  margin: const EdgeInsets.all(6),
                  height: 40,
                  width: 200,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(17)),
                  child: TextField(
                    controller: contid,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Enter ID Number"),
                  ),
                ),
                // ignore: prefer_const_constructors
                SizedBox(
                  width: 20,
                ),
                Container(
                  margin: const EdgeInsets.all(6),
                  child: const Center(
                      child: Text(
                    'BPS:',
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  )),
                ),
                Container(
                  margin: const EdgeInsets.all(6),
                  height: 40,
                  width: 200,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(17)),
                  child: TextField(
                    controller: contbps,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(), hintText: "Enter BPS"),
                  ),
                ),
              ],
            ),
            // ignore: prefer_const_constructors
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.all(6),
                  child: const Center(
                      child: Text(
                    'department:',
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  )),
                ),
                Container(
                  margin: const EdgeInsets.all(6),
                  height: 40,
                  width: 200,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(17)),
                  child: TextField(
                    controller: contdep,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Enter Your Department"),
                  ),
                ),
                // ignore: prefer_const_constructors
                SizedBox(
                  width: 20,
                ),
                Container(
                  margin: const EdgeInsets.all(6),
                  child: const Center(
                      child: Text(
                    'Job-Type:',
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  )),
                ),
                Container(
                  margin: const EdgeInsets.all(6),
                  height: 40,
                  width: 200,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(17)),
                  child: const TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Enter Job-Type"),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.all(6),
                  child: const Center(
                      child: Text(
                    'Job-Nature:',
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  )),
                ),
                Container(
                  margin: const EdgeInsets.all(6),
                  height: 40,
                  width: 200,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(17)),
                  child: const TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), hintText: "Job-Nature"),
                  ),
                ),
                // ignore: prefer_const_constructors
                SizedBox(
                  width: 20,
                ),
                Container(
                  margin: const EdgeInsets.all(6),
                  child: const Center(
                      child: Text(
                    'Status',
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  )),
                ),
                Container(
                  margin: const EdgeInsets.all(6),
                  height: 40,
                  width: 200,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(17)),
                  child: const TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), hintText: "Enter status"),
                  ),
                ),
              ],
            ),
            Container(
              width: 150,
              height: 30,
              margin: const EdgeInsets.only(bottom: 5),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Templets(
                              id: contid.text.toString(),
                              bps: contbps.text.toString(),
                              dep: contdep.text.toString()),
                        ));
                  },
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.blue),
                  ),
                  // ignore: prefer_const_constructors
                  child: Center(
                    child: const Text(
                      'Submit',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  )),
            )
          ]),
        ),
      ),
    );
  }
}
