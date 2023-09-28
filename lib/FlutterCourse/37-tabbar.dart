import 'package:flutter/material.dart';

//الجزء السفلي من appbar
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
        home: DefaultTabController(
      length: 3,
      initialIndex: 0,//الصفحه رئيسيه
      child: Scaffold(
        //lenght عدد العناصر الي في شريط

        appBar: AppBar(
          title: const Text("MyApp"),
          bottom: const TabBar(tabs: [
            Tab(
              child: Text('Labtop'),
            ),
            Tab(
              child: Text('PC'),
            ),
            Tab(
              child: Text('Mobile'),
            ),
          ]),
        ),
        body: Container(
          padding: const EdgeInsets.all(20),
          margin: const EdgeInsets.all(20),
          child: const TabBarView(
            children: [
              Text("Laptop Page"),
              Text("PC Page"),
              Text("Mobile Page"),
            ],
          ),
        ),
      ),
    ));
  }
}
