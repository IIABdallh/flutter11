// ignore_for_file: file_names

import 'package:flutter/material.dart';

void mian() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      home: Scaffold (
          appBar: AppBar (
            title: const Text("homepage"),
          ),
          body: Container (
            decoration: BoxDecoration(
                color: Colors.lime,
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                border: Border.all(
                    color: const Color.fromRGBO(0, 0, 0, 1), width: 40),
                boxShadow: const [
                  BoxShadow(
                      color: Colors.black,
                      offset: Offset(10, 10),
                      spreadRadius: 10.5,
                      blurRadius: 40),
                  BoxShadow(
                      color: Color.fromRGBO(241, 3, 3, 1),
                      offset: Offset(-10, -10),
                      spreadRadius: 10.5,
                      blurRadius: 40)
                ]),
            width: 500,
            height: 300,
            //color: Colors.lime,لازم احط كولور جوا ديكوراشين
            padding: const EdgeInsets.only(left: 50, top: 60), //تباعد داخلي
            margin: const EdgeInsets.all(60), //تباعد خترجي
            alignment: Alignment.bottomCenter, //بيغير مكان نص
            child: const Text(
              "abdallh mamdouh",
              style: TextStyle(
                color: Colors.cyan,
                fontSize: 50.9,
                fontWeight: FontWeight.w900,
              ),
            ),
          )),
    );
  }
}
