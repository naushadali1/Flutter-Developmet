import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'slip.dart';

// ignore: must_be_immutable
class Templets extends StatefulWidget {
  Templets({
    Key? key,
    this.id,
    this.bps,
    this.dep,
    this.jobtype,
    this.jobnature,
    this.status,
  }) : super(key: key);
  String? id = "1";
  String? bps;
  String? dep;
  String? jobtype;
  String? jobnature;
  String? status;
  @override
  State<Templets> createState() => _TempletsState();
}

class _TempletsState extends State<Templets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Template"),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(border: Border.all(width: 1)),
        padding: const EdgeInsets.only(bottom: 30),
        child: Column(children: [
          Container(
            padding: const EdgeInsets.all(20),
            child: const Text('Salary Managment Template',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 26.0,
                )),
          ),
          Table(
            border: TableBorder.all(
              color: Colors.black,
            ),
            columnWidths: const {
              0: FlexColumnWidth(1),
              1: FlexColumnWidth(2),
              2: FlexColumnWidth(3),
              3: FlexColumnWidth(5),
              4: FlexColumnWidth(5),
              5: FlexColumnWidth(5),
              6: FlexColumnWidth(3),
            },
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const TableRow(children: [
                Center(
                  child: Text(
                    "ID",
                    style:
                        TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                  ),
                ),
                Center(
                  child: Text(
                    "BPS",
                    style:
                        TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                  ),
                ),
                Center(
                  child: Text(
                    "Departments",
                    style:
                        TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                  ),
                ),
                Center(
                  child: Text(
                    "Job Type",
                    style:
                        TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                  ),
                ),
                Center(
                  child: Text(
                    "Job Nature",
                    style:
                        TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                  ),
                ),
                Center(
                  child: Text(
                    "Status",
                    style:
                        TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                  ),
                ),
                Center(
                  child: Text(
                    "Salary",
                    style:
                        TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                  ),
                ),
              ]),
              // ignore: prefer_const_constructors
              TableRow(children: [
                Center(
                  child: Text(
                    id,
                    style: const TextStyle(fontSize: 15.0),
                  ),
                ),
                Center(
                  child: Text(
                    
                    style: const TextStyle(fontSize: 15.0),
                  ),
                ),
                Center(
                  child: Text(
                    widget.dep,
                    style: const TextStyle(fontSize: 15.0),
                  ),
                ),
                Center(
                  child: Text(
                    widget.jobtype,
                    style: const TextStyle(fontSize: 15.0),
                  ),
                ),
                Center(
                  child: Text(
                    widget.jobnature,
                    style: const TextStyle(fontSize: 15.0),
                  ),
                ),
                Center(
                  child: Text(
                    widget.status,
                    style: const TextStyle(fontSize: 15.0),
                  ),
                ),
                const Center(
                  child: Text(
                    "15000",
                    style: TextStyle(fontSize: 15.0),
                  ),
                ),
              ]),
            ],
          ),
          const SizedBox(
            height: 7,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SalarySlip()));
              },
              child: const Text(
                "generate slip",
                style: TextStyle(fontWeight: FontWeight.bold),
              ))
        ]),
      ),
    );
  }
}
