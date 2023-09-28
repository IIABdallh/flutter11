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
        drawer: const Drawer(),
        appBar: AppBar(actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.settings)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.star)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.person)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.settings)),
        ],
          
          leading: IconButton(onPressed: () {}, icon: const Icon(Icons.settings)),
          elevation: 100, //ظل
          shadowColor: Colors.yellow,
          centerTitle: true,
          backgroundColor: Colors.amber,
          titleTextStyle: const TextStyle(
              fontWeight: FontWeight.bold, fontSize: 30, color: Colors.black,),
          title: const Text("MyApp" ),
        ),
        body: Container(
          padding: const EdgeInsets.all(20),
          margin: const EdgeInsets.all(20),
          child: const Column(
            children: [],
          ),
        ),
      ),
    );
  }
}
