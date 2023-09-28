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
  GlobalKey<ScaffoldState> scaffoldkey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        key: scaffoldkey,
        appBar: AppBar(
          title: const Text("MyApp"),
        ),
        body: Container(
          padding: const EdgeInsets.all(20),
          child: ListView(
            children: [
              Center(
                child: MaterialButton(
                  color: Colors.red,textColor: Colors.white,
                  child: Text("show"),
                  onPressed: () {
                  scaffoldkey.currentState!
                      .showBottomSheet((context) => Container(
                            height: 100,
                            width: 1000,
                            color: Colors.red,
                            
                          ));
                }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
