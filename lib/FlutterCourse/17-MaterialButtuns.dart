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
          appBar: AppBar(
            title: const Text('MY App'),
          ),
          body: Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                MaterialButton(
                  onLongPress: () {
                    print("long press");
                  },
                  onPressed: () {
                    print("on press");
                  },
                  child: const Text("abdallh"),
                  color: Colors.red,
                  textColor: Colors.white,
                  minWidth: 200,
                  height: 50,
                  padding: const EdgeInsets.all(30),
                  
                )
              ],
            ),
          )),
    );
  }
}
