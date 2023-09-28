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
  GlobalKey<ScaffoldState> scaffoldkey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        endDrawer: Drawer(),
        key: scaffoldkey,
        body: Container(
          
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: MaterialButton(
                  onPressed: () {
                    scaffoldkey.currentState!.openEndDrawer();
                  },
                  color: Colors.red,
                  textColor: Colors.black,
                  child: Text("open drawer"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
