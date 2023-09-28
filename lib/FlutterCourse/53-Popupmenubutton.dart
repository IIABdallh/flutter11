import 'package:flutter/material.dart';

void mian() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("MyApp"),
          actions: [
            PopupMenuButton(
                icon: Icon(Icons.watch),
                color: Colors.grey[300],
                onSelected: (value) {
                  //بيرجع قيمه العنصر الي بضغط عليه
                  print("-----------------------------------------------");
                  print(value);
                },
                onOpened: () {
                  print("-----------------------------------------------");
                  print("open");
                },
                onCanceled: () {
                  print("-----------------------------------------------");
                  print("cancel");
                },
                itemBuilder: (context) => [
                      PopupMenuItem(
                        child: Text("settings"),
                        value: "valone",
                        onTap: () {
                          print("valOne");
                        },
                      ),
                      PopupMenuItem(
                        child: Text("info"),
                        value: "valone",
                        onTap: () {
                          print("valOne");
                        },
                      ),
                    ])
          ],
        ),
        body: Container(
          padding: const EdgeInsets.all(20),
          child: ListView(
            children: [
              PopupMenuButton(
                  itemBuilder: (context) => [
                        const PopupMenuItem(child: Text("settings")),
                        const PopupMenuItem(child: Text("info")),
                      ])
            ],
          ),
        ),
      ),
    );
  }
}
