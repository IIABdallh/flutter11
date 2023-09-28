import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

void main() {
  runApp(const MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
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
            MaterialButton(
              color: Colors.red,
              child: const Text("Http Request"),
              onPressed: () async {
                //async & await بيستخدموا لو كانت العمليه تستغرق وقت
                var response = await get(
                    //  async & await يبقي لازم استخدم  future بنحدد علي فنكشن لو ظهر
                    Uri.parse(
                        "https://jsonplaceholder.typicode.com/posts")); //كسترينج api  هو بيشوف كل
                var responsebody =
                    jsonDecode(response.body); //علشان احول السترينج الي  ليست
                print("----------------------------------------");
                print(responsebody[0]["id"]);
                print(responsebody[0]["userId"]);
                print(responsebody[0]["title"]);
                print(responsebody[0]["body"]);
              },
            ),
          ],
        ),
      ),
    );
  }
}
//get ==> عاده يتم استعمالها لجلب معلومات -2- مفهاش تشفير
//post ==> لاضافه وعمل تعديل علي معلومات -2- فيها تشفير
