import 'package:flutter/material.dart';
//حاجه زي كونتينر 
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
          child: ListView(
        children: [
          Card(
            child: Container(
              padding: EdgeInsets.all(20),
              child: Text(
                "abdallh",
              ),
            ),
          )
        ],
      )),
    ));
  }
}
