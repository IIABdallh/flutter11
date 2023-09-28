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
  bool football = false;
  bool tennis = false;
  bool chess = false;
  bool volley = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("MyApp"),
        ),
        drawer: const Drawer(),
        body: Container(
          padding: const EdgeInsets.all(20),
          margin: const EdgeInsets.all(20),
          child: Column(
            children: [
              const Text(
                "choose ur favourite hoppy",
                style: TextStyle(fontSize: 20),
              ),
              CheckboxListTile(
                  title: const Text("football"),
                  subtitle: const Text("sport"),
                  value: football,
                  onChanged: (value) {
                    setState(() {
                      football = value!;
                    });
                  }),
              CheckboxListTile(
                  title: const Text("tennis"),
                  value: tennis,
                  onChanged: (value) {
                    setState(() {
                      tennis = value!;
                    });
                  }),
              CheckboxListTile(
                  activeColor: Colors.amberAccent,
                  title: const Text("chess"),
                  value: chess,
                  onChanged: (value) {
                    setState(() {
                      chess = value!;
                    });
                  }),
              CheckboxListTile(
                  title: const Text("volley"),
                  value: volley,
                  onChanged: (value) {
                    setState(() {
                      volley = value!;
                    });
                  })
            ],
          ),
        ),
      ),
    );
  }
}
