// ignore: file_names
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  List username = [
    {"name": "abdallh", "age": "18"},
    {"name": "ahmed", "age": "16"},
    {"name": "sayed", "age": "19"},
    {"name": "abdo", "age": "8"},
    {"name": "mamdouh", "age": "45"},
    {"name": "wael", "age": "20"},
    {"name": "abdallh", "age": "18"},
    {"name": "ahmed", "age": "16"},
    {"name": "sayed", "age": "19"},
    {"name": "abdo", "age": "8"},
    {"name": "mamdouh", "age": "45"},
    {"name": "wael", "age": "20"},
    {"name": "abdallh", "age": "18"},
    {"name": "ahmed", "age": "16"},
    {"name": "sayed", "age": "19"},
    {"name": "abdo", "age": "8"},
    {"name": "mamdouh", "age": "45"},
    {"name": "wael", "age": "20"},
    {"name": "abdallh", "age": "18"},
    {"name": "ahmed", "age": "16"},
    {"name": "sayed", "age": "19"},
    {"name": "abdo", "age": "8"},
    {"name": "mamdouh", "age": "45"},
    {"name": "wael", "age": "20"},
    {"name": "abdallh", "age": "18"},
    {"name": "ahmed", "age": "16"},
    {"name": "sayed", "age": "19"},
    {"name": "abdo", "age": "8"},
    {"name": "mamdouh", "age": "45"},
    {"name": "wael", "age": "20"},
    {"name": "abdallh", "age": "18"},
    {"name": "ahmed", "age": "16"},
    {"name": "sayed", "age": "19"},
    {"name": "abdo", "age": "8"},
    {"name": "mamdouh", "age": "45"},
    {"name": "wael", "age": "20"},
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('MyApp'),
        ),
        body: Container(
          padding: const EdgeInsets.all(20),
          child: ListView(
            children: [
              ...List.generate(username.length, (index) {//بنحط ... علشان مينفعش نحط لسيت داخل ليست
                return Card(
                    child: ListTile(
                  title: Text(username[index]["name"]),
                  subtitle: Text(
                    username[index]["age"],
                  ),
                ));
              })
              //مينفعش نحط ليست داخل ليست
            ],
          ),
        ),
      ),
    );
  }
}
