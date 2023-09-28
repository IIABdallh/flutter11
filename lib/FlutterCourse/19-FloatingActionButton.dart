// ignore: file_names
import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,//اتحكم في مكان 
          floatingActionButton: FloatingActionButton(
              child: Icon(Icons.add),
              onPressed: () {
                print("ahmed");
              }),
          appBar: AppBar(
            title: const Text('MY App'),
          ),
          body: Container(
            padding: const EdgeInsets.all(20),
            child: ListView(
              children: [
                Container(
                  width: 100,
                  height: 500,
                  color: Colors.amber,
                ),
                
                Container(
                  width: 100,
                  height: 500,
                  color: Colors.pink,
                ),
                Container(
                  width: 100,
                  height: 500,
                  color: Colors.red,
                ),
                
              ],
            ),
          )),
    );
  }
}
