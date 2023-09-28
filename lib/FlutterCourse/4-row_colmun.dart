import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("HomePage"),
        ),
        body: Container(
          width: 500,
          decoration: BoxDecoration(border:Border.all(color: Colors.black,width:5,)),
          child: Column(//row نفس كلام علي 
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text("abdallh"),
              Container(
                width: 100,
                height: 100,
                color: Colors.cyan,
              ),
              Image.asset("اي اسم صوره"),
              Container(
                width: 100,
                height: 100,
                color: const Color.fromRGBO(223, 52, 5, 1),
              ),
              Container(
                width: 100,
                height: 100,
                color: const Color.fromRGBO(30, 1, 249, 1),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
