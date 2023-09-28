// ignore_for_file: file_names

import 'package:flutter/material.dart';

void mian() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("homepage"),
        ),
        body: const Text(
          "abdallh mamdouh",
          style: TextStyle(
            color: Colors.cyan,
            fontSize: 50.9,
            fontWeight: FontWeight.w900,
            backgroundColor: Color.fromARGB(255, 0, 0, 0),
          ),
        ),
      ),
    );
  }
}
