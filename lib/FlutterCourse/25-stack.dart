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
            child: Stack(
              clipBehavior: Clip.none,//ده الي بيظهر لون لو طلع بره
              alignment: Alignment.center,
              children: [
                Container(
                  width: 300,
                  height: 300,
                  color: Colors.red,
                ),
                Container(
                  width: 200,
                  height: 200,
                  color: Colors.greenAccent,
                ),
                Positioned(
                    left: 0,
                    top: 0,
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.blue,
                    )),
                    Positioned(
                    right: 0,
                    bottom: 0,
                    top: 0,
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.yellow,
                    )),
                Positioned(
                    left: 0,
                    bottom: -90,
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.black,
                    )),
                const Positioned(bottom: 50, child: Text("abdallh")),
              ],
            )),
      ),
    );
  }
}
