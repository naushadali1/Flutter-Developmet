import 'package:flutter/material.dart';
import 'slip.dart';

// ignore: must_be_immutable
class Templets extends StatefulWidget {
  Templets({
    Key? key,
    required this.id,
    required this.bps,
    required this.dep,
  }) : super(key: key);
  final String id;
  final String bps;
  final String dep;
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
              2: FlexColumnWidth(4),
              3: FlexColumnWidth(3),
              4: FlexColumnWidth(4),
              5: FlexColumnWidth(2.5),
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
                    "${widget.id}",
                    style: TextStyle(fontSize: 15.0),
                  ),
                ),
                Center(
                  child: Text(
                    "${widget.bps}",
                    style: TextStyle(fontSize: 15.0),
                  ),
                ),
                Center(
                  child: Text(
                    "${widget.dep}",
                    style: TextStyle(fontSize: 15.0),
                  ),
                ),
                Center(
                  child: Text(
                    "admin",
                    style: TextStyle(fontSize: 15.0),
                  ),
                ),
                Center(
                  child: Text(
                    "dailly based",
                    style: TextStyle(fontSize: 15.0),
                  ),
                ),
                Center(
                  child: Text(
                    "Active",
                    style: TextStyle(fontSize: 15.0),
                  ),
                ),
                Center(
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
