// ignore: file_names
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('MyApp'),
        ),
        body: Container(
          padding: const EdgeInsets.all(20),
          child: const Column(
            children: [],
          ),
        ),
      ),
    );
  }
}
