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
  GlobalKey<ScaffoldState> scafoldkey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        key: scafoldkey,
        appBar: AppBar(
          title: const Text("MyApp"),
        ),
        body: Container(
          padding: const EdgeInsets.all(20),
          child: ListView(
            children: [
              MaterialButton(
                  textColor: Colors.white,
                  color: Colors.red,
                  child: const Text("Show"),
                  onPressed: () {
                    ScaffoldMessenger.of(context)
                    
                        .showSnackBar( SnackBar(
                          action: SnackBarAction(label: "ok", onPressed: (){}),
                          duration: Duration(seconds: 2),
                          content: Text("heloo")));
                  })
            ],
          ),
        ),
      ),
    );
  }
}
