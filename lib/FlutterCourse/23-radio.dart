import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  State<MyApp> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  String? name;
  String? age;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("My App"),
        ),
        body: Container(
          padding: const EdgeInsets.all(20),
          margin: const EdgeInsets.all(20),
          color: Colors.amber,
          child: Column(children: [
            const Text(
              "your name",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
            ),
            RadioListTile(
                title: const Text("yosef"),
                value: "yosef",
                groupValue: name,
                onChanged: (val) {
                  setState(() {
                    name = val;
                  });
                }),
            RadioListTile(
                title: const Text("chibi"),
                value: "chibi",
                groupValue: name,
                onChanged: (val) {
                  setState(() {
                    name = val;
                  });
                }),
            RadioListTile(
                title: const Text("7ssn"),
                value: "7ssn",
                groupValue: name,
                onChanged: (val) {
                  setState(() {
                    name = val;
                  });
                }),
            RadioListTile(
                title: const Text("3bdallh"),
                value: "3bdallh",
                groupValue: name,
                onChanged: (val) {
                  setState(() {
                    name = val;
                  });
                }),
            const Text(
              "your age",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
            ),
            RadioListTile(
                title: const Text("18"),
                value: "18",
                groupValue: age,
                onChanged: (val) {
                  setState(() {
                    age = val;
                  });
                }),
            RadioListTile(
                title: const Text("17"),
                value: "17",
                groupValue: age,
                onChanged: (val) {
                  setState(() {
                    age = val;
                  });
                }),
            RadioListTile(
                title: const Text("19"),
                value: "19",
                groupValue: age,
                onChanged: (val) {
                  setState(() {
                    age = val;
                  });
                }),
            RadioListTile(
                title: const Text("20"),
                value: "20",
                groupValue: age,
                onChanged: (val) {
                  setState(() {
                    age = val;
                  });
                }),
            Text("yoor name $name",style: TextStyle(fontSize: 20),),
            Text("your age $age ",
              style: TextStyle(fontSize: 20),
            )
          ]),
        ),
      ),
    );
  }
}
