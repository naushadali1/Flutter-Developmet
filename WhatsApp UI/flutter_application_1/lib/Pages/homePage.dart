import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("WhatsApp"),
            bottom: const TabBar(tabs: [
              Tab(
                  icon: Icon(
                Icons.people_sharp,
              )),
              Tab(text: "Chat"),
              Tab(text: "status"),
              Tab(text: "Call"),
            ]),
            actions: [
              const SizedBox(
                width: 15,
              ),
              const Icon(Icons.camera_alt_outlined),
              const SizedBox(
                width: 15,
              ),
              const Icon(Icons.search),
              const SizedBox(
                width: 15,
              ),
              PopupMenuButton(
                  itemBuilder: (context) => const [
                        PopupMenuItem(child: Text("New Group")),
                        PopupMenuItem(child: Text("New BroadCast")),
                        PopupMenuItem(child: Text("Linked devices")),
                        PopupMenuItem(child: Text("Settings")),
                      ])
            ],
          ),
          // ignore: prefer_const_constructors
          body: TabBarView(children: [
            // ignore: prefer_const_constructors
            Center(
                // ignore: prefer_const_constructors
                child: Text(
              "Start Broadcast",
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            )),
            ListView.builder(itemBuilder: (context, index) {
              // ignore: prefer_const_constructors
              return ListTile(
                leading: const CircleAvatar(
                  backgroundImage: AssetImage(
                    "assets/images/MyPic.jpg",
                  ),
                ),
                // ignore: prefer_const_constructors
                title: Text("Naushad Ali"),
                subtitle: const Text("Hello How are you Naushad"),
                trailing: const Text("6:30 PM"),
              );
            }),

            ListView.builder(itemBuilder: (context, index) {
              // ignore: prefer_const_constructors
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(index / 2 == 0 ? "Recent updates" : "",
                        style: index / 2 == 0
                            ? TextStyle(fontSize: 20)
                            : TextStyle(fontSize: 0)),
                    ListTile(
                      leading: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.green, width: 3)),
                        child: const CircleAvatar(
                          backgroundImage: AssetImage(
                            "assets/images/MyPic.jpg",
                          ),
                        ),
                      ),
                      // ignore: prefer_const_constructors
                      title: Text("Naushad Ali"),
                      subtitle: const Text("17 Mint Ago"),
                    ),
                  ],
                ),
              );
            }),

            ListView.builder(itemBuilder: (context, index) {
              // ignore: prefer_const_constructors
              return ListTile(
                leading: const CircleAvatar(
                  backgroundImage: AssetImage(
                    "assets/images/MyPic.jpg",
                  ),
                ),
                // ignore: prefer_const_constructors
                title: Text("Naushad Ali"),
                subtitle: Text(index % 2 == 0
                    ? "Missed a voice call"
                    : "Missed a Video Call"),
                trailing: Icon(index % 2 == 0
                    ? Icons.call_end_outlined
                    : Icons.video_call_outlined),
              );
            }),
          ]),
        ),
      ),
    );
  }
}
