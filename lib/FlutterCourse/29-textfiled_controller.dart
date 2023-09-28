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
  TextEditingController username = TextEditingController();//بنحفظ معلومات في متغير
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
                controller: username,
              ),
              MaterialButton(
                onPressed: () {
                  setState(() {
                    print("hello");
                  });
                },
                child: const Text(
                  "hello",
                  style: TextStyle(color: Colors.red),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
