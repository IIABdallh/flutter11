//هي عباره عن gridview +loop
import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

// ignore: must_be_immutable
class Myapp extends StatelessWidget {
  List emploee = [
    {"name": "abdallh"},
    {"name": "mamdouh"},
    {"name": "ali"},
    {"name": "ahmed"},
    {"name": "mhomd"},
    {"name": "anas"},
  ];

  Myapp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 9,
          crossAxisSpacing: 5,
          childAspectRatio: 0.5, //نسبه طول الي العرض
          mainAxisExtent: 100,
        ),
        itemCount: emploee.length,
        itemBuilder: (context, i) {
          return Container(
              height: 100,
              color: i.isEven
                  ? Colors.black
                  : const Color.fromRGBO(243, 33, 33, 1),
              child: Text(
                emploee[i]["name"]!,
                style: const TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255), fontSize: 20),
                textAlign: TextAlign.center,
              ));
        },
      ),
    ));
  }
}
