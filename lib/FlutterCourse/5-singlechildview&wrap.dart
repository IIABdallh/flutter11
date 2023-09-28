import 'package:flutter/material.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("HomePage"),
        ),
        body: SingleChildScrollView(//عشان نعمل سكرول 
          scrollDirection: Axis.horizontal,//بنحدد الاتجاه الي هيمش اتجاه
          child: Row(//بنحدد row ولا colmun
            children: [
              Container(
                height: 100,
                width: 100,
                color: Colors.black,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.red,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.blue,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.yellow,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.black,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.red,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.blue,
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}

