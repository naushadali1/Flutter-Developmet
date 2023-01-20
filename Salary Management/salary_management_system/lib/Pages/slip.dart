import 'package:flutter/material.dart';

class SalarySlip extends StatefulWidget {
  const SalarySlip({super.key});

  @override
  State<SalarySlip> createState() => _SalarySlipState();
}

class _SalarySlipState extends State<SalarySlip> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Salary Slip'),
        centerTitle: true,
      ),
      body: Container(
          margin: EdgeInsets.only(top: 80),
          padding: EdgeInsets.all(7),
          decoration:
              BoxDecoration(border: Border.all(color: Colors.black, width: 1)),
          child: Column(children: [
            Container(
              margin: const EdgeInsets.all(5),
              child: const Text('Salary Slip',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  )),
            ),
            Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const Text(
                  "ID:",
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  "101",
                  style: TextStyle(
                    fontSize: 15.0,
                  ),
                ),
                const SizedBox(
                  width: 180,
                ),
                const Text(
                  "Department:",
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  "Administration",
                  style: TextStyle(
                    fontSize: 15.0,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const Text(
                  "Name:",
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  "Ali",
                  style: TextStyle(
                    fontSize: 15.0,
                  ),
                ),
                const SizedBox(
                  width: 160,
                ),
                const Text(
                  "Bank Name:",
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  "HBL",
                  style: TextStyle(
                    fontSize: 15.0,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const Text(
                  "Account No:",
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  "111122233344",
                  style: TextStyle(
                    fontSize: 15.0,
                  ),
                ),
                const SizedBox(
                  width: 40,
                ),
                const Text(
                  "Address:",
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  "Kurram Parachinar",
                  style: TextStyle(
                    fontSize: 15.0,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const Text(
                  "Amount",
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  "15000",
                  style: TextStyle(
                    fontSize: 15.0,
                  ),
                ),
                const SizedBox(
                  width: 130,
                ),
                const Text(
                  "Transaction Id",
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  "23466889",
                  style: TextStyle(
                    fontSize: 15.0,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const Text(
                  'Month:',
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  'Feb',
                  style: TextStyle(
                    fontSize: 15.0,
                  ),
                ),
                const SizedBox(
                  width: 150,
                ),
                const Text(
                  "Date of transaction:",
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  "07-March-2022",
                  style: TextStyle(
                    fontSize: 15.0,
                  ),
                ),
              ],
            ),
          ])),
    );
  }
}
