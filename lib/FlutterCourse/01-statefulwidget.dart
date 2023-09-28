import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void mian() async{
    WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
      home: Scaffold(appBar: AppBar(title: const Text("MyApp"),),
      body: Container(
        padding: const EdgeInsets.all(20),

        child:  ListView(children: [

        ],),
      ),
      ),
    );
  }
  
}
