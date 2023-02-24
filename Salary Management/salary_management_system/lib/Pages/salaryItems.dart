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
  var contjobType = TextEditingController();
  var contjobNature = TextEditingController();
  var contstatus = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Salary Items"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(top: 10),
          decoration: BoxDecoration(border: Border.all(width: 1)),
          child: Center(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'Salary Items',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),

                  Container(
                    margin: const EdgeInsets.all(6),
                    height: 40,
                    width: 200,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(17)),
                    child: TextFormField(
                      controller: contid,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Enter ID Number",
                        label: Text("ID"),
                      ),
                    ),
                  ),
                  // ignore: prefer_const_constructors
                  SizedBox(
                    width: 20,
                  ),

                  Container(
                    margin: const EdgeInsets.all(6),
                    height: 40,
                    width: 200,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(17)),
                    child: TextFormField(
                      controller: contbps,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Enter BPS",
                          label: Text("BPS")),
                    ),
                  ),

                  // ignore: prefer_const_constructors
                  SizedBox(
                    height: 10,
                  ),

                  Container(
                    margin: const EdgeInsets.all(6),
                    height: 40,
                    width: 200,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(17)),
                    child: TextFormField(
                      controller: contdep,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "your Department",
                          label: Text("Department")),
                    ),
                  ),

                  Container(
                    margin: const EdgeInsets.all(6),
                    height: 40,
                    width: 200,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(17)),
                    child: TextFormField(
                      controller: contjobType,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Current Job Type",
                          label: Text("Job Type")),
                    ),
                  ),

                  Container(
                    margin: const EdgeInsets.all(6),
                    height: 40,
                    width: 200,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(17)),
                    child: TextFormField(
                      controller: contjobNature,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Enter Job Nature",
                          label: Text("Job Nature")),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(6),
                    height: 40,
                    width: 200,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(17)),
                    child: TextFormField(
                      controller: contstatus,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Status",
                          label: Text("Status")),
                    ),
                  ),

                  Container(
                    width: 100,
                    margin: const EdgeInsets.only(bottom: 5),
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Templets(
                                  id: contid.text.toString(),
                                  bps: contbps.text.toString(),
                                  dep: contdep.text.toString(),
                                  jobtype: contjobType.toString(),
                                  jobnature: contjobNature.toString(),
                                  status: contstatus.toString(),
                                ),
                              ));
                        },
                        style: const ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.blue),
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
      ),
    );
  }
}
