// ignore: file_names
import 'package:flutter/material.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatefulWidget {
  const Myapp({super.key});
  @override
  State<Myapp> createState() => _Myappstate();
}

class _Myappstate extends State<Myapp> {
  int i = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My App'),
        ),
        body: Container(
          padding: const EdgeInsets.all(30),
          child: Column(children: [
            IconButton(
                onPressed: () {
                  setState(() {
                    //بيروح يعيد built تاني
                    i++;
                  });
                },
                icon: const Icon(Icons.add)),
            Text(
              "counter $i",
              style: const TextStyle(fontSize: 17),
            ),
            IconButton(
                onPressed: () {
                  setState(() {
                    i--;
                  });
                },
                icon: const Icon(Icons.remove)),
          ]),
        ),
      ),
    );
    ;
  }
}
