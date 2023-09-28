// ignore: file_names
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
  bool status = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('MY App'),
        ),
        body: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Switch(
                activeColor: Colors.pink,
                activeTrackColor: Colors.red,
                inactiveThumbColor: Colors.grey,
                inactiveTrackColor: Colors.black ,
                
                value: status,
                onChanged: (value) {
                  print("change");
                  setState(() {
                    status = value;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
