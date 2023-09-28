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
          child: IconButton(
            iconSize: 500,
              onPressed: () {
                print("on pressd");
              },
              icon: Icon(Icons.settings)),
        ),
      ),
    );
  }
}
