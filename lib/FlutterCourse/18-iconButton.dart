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
                IconButton(
                    onPressed: () {
                      print("press");
                    },
                    icon: Icon(Icons.star))
              ],
            ),
          )),
    );
  }
}
