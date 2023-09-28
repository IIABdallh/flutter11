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
          child: const Column(
            children: [
              TextField(
                decoration: InputDecoration(border: OutlineInputBorder()),
                maxLength: 2000,//عدد المدخلات 
                keyboardType: TextInputType.name,//(number - phone - text - datetime  )
                maxLines: 3,
                minLines: 3,


              )
            ],
          ),
        ),
      ),
    );
  }
}
