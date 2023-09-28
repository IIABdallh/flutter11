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
          width: 100,
          height: 70,
          color: Color.fromRGBO(55, 54, 54, 1),
          padding: const EdgeInsets.all(20),
          margin: const EdgeInsets.all(20),
          child: Column(
            children: [
              SwitchListTile(//بتاخد العرض المتاح 
                activeColor: Colors.pink,
                activeTrackColor: Colors.red,
                inactiveThumbColor: Colors.grey,
                inactiveTrackColor: Colors.black ,
                title: Text("dark"),
                
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