import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

//بيحفظ معلمومات في جهاز علي سبيل مثال صفحه تسجيل دخول
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
          child: ListView(
            children: [
              MaterialButton(
                onPressed: () async {
                  SharedPreferences sharedPreferences =
                      await SharedPreferences.getInstance();
                  sharedPreferences.setString("name", "abdallh");
                },
                child: Text("set Name"),
              ),
              MaterialButton(
                onPressed: () async {
                  print("------------------------------------------");
                  SharedPreferences sharedPreferences =
                      await SharedPreferences.getInstance();
                  String name = sharedPreferences.getString("name")!;
                  print(name);
                },
                child: Text("print Name"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
