import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(
          bodySmall: TextStyle(color: Colors.blue, fontSize: 30),
          bodyLarge:
              TextStyle(color: Color(0xFF000000), fontSize: 70),
          bodyMedium: TextStyle(
              color: Color.fromRGBO(177, 243, 33, 1), fontSize: 30),
        ),
        appBarTheme: const AppBarTheme(color: Colors.red),
        fontFamily:
            'CroissantOne', // إذا كنت ترغب في تطبيق الخط على مستوى التطبيق بأكمله
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("MyApp"),
        ),
        body: Container(
          padding: const EdgeInsets.all(20),
          child: ListView(
            children: [
              Center(
                child: Text(
                  "How are you?",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

