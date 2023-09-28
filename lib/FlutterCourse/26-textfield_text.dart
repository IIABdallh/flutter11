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
        ),
        body: Container(
          padding: const EdgeInsets.all(20),
          margin: const EdgeInsets.all(20),
          child:  const Column(
            children: [
              TextField(
                decoration: InputDecoration(
                    hintText: "hintext",
                    hintStyle: TextStyle(color: Colors.black)),
              ),
              TextField(
                decoration: InputDecoration(
                    labelText: "label",
                    labelStyle: TextStyle(color: Colors.red),fillColor: Colors.amber,filled: true),
              ),
              TextField(
                  decoration: InputDecoration(
                      prefix: Icon(
                Icons.person_2_outlined,
                color: Colors.red,
              ))),
              TextField(
                  decoration: InputDecoration(suffix: Icon(Icons.person))),
              TextField(
                decoration: InputDecoration(prefixText:"username: " ),
              ),
              TextField(decoration: InputDecoration(
                icon: Icon(Icons.person)
              ),)
            ],
          ),
        ),
      ),
    );
  }
}
