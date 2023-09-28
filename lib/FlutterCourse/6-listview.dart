import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Container(height: 700,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Container(
                width: 200,
                height: 500,
                color: Colors.yellow,
              ),
            Container(
                width: 200,
                height: 500,
                color:const Color.fromRGBO(210, 7, 7, 1),
              ),
            Container(
                width: 200,
                height: 500,
                color: Colors.blue,
              ),
              Container(
                width: 200,
                height: 500,
                color: Colors.black,
              ),
              Container(
                width: 200,
                height: 500,
                color: Colors.yellow,
              ),
              Container(
                width: 200,
                height: 500,
                color: const Color.fromRGBO(210, 7, 7, 1),
              ),
              Container(
                width: 200,
                height: 500,
                color: Colors.blue,
              ),
              Container(
                width: 200,
                height: 500,
                color: Colors.black,
              ),
              Container(
                width: 200,
                height: 500,
                color: Colors.yellow,
              ),
              Container(
                width: 200,
                height: 500,
                color: const Color.fromRGBO(210, 7, 7, 1),
              ),
              Container(
                width: 200,
                height: 500,
                color: Colors.blue,
              ),
              Container(
                width: 200,
                height: 500,
                color: Colors.black,
              ),
            ],),
        ),
        
      ),
    );
  }
}
