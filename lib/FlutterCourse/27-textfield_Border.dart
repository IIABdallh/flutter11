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
          child: Column(
            children: [
              TextField(
                enabled: true,
                decoration: InputDecoration(
                    labelText: 'enabled',
                    border: const OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.red),
                        borderRadius: BorderRadius.circular(40)),
                    enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green))),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20),
                child: const TextField(
                  enabled: false,
                  decoration: InputDecoration(
                      labelText: "disabled",
                      border: OutlineInputBorder(),
                      disabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.yellow))),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
