import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  bool loading = true;
  List data = [];

  // دالة لجلب البيانات من الخادم
  Future<void> getdata() async {
    var response =
        await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));
    var responseBody = jsonDecode(response.body);
    data.addAll(responseBody);
    // بعد الانتهاء من جلب البيانات، يتم تحديث الواجهة
    setState(() {
      loading = false;
    });
  }

  @override
  void initState() {
    getdata(); // استدعاء الدالة لجلب البيانات عند بدء تشغيل التطبيق
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MyApp"),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            if (loading)
              const Center(
                child: CircularProgressIndicator(),
              ),
            ...List.generate(
              data.length,
              (index) => Card(
                child: ListTile(
                  title: Text("${data[index]["title"]}"),
                  subtitle: Text("${data[index]["body"]}"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

