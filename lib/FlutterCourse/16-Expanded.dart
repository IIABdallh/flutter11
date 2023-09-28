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
          title: const Text('MY App'),
        ),
        // ignore: avoid_unnecessary_containers
        body: Column(
          children: [
            Container(
              child: Row(children: [
                Expanded(
                    flex: 1,
                    child: Container(
                      color: Color.fromARGB(199, 229, 6, 6),
                      height: 100,
                    )),
                Expanded(
                    flex: 3,
                    child: Container(
                      color: Color.fromRGBO(6, 30, 239, 0.907),
                      height: 100,
                    )),
                Expanded(
                    flex: 2,
                    child: Container(
                      color: Color.fromRGBO(8, 228, 34, 0.926),
                      height: 100,
                    )),
                Expanded(
                    flex: 9,
                    child: Container(
                      color: Color.fromRGBO(228, 8, 184, 0.925),
                      height: 100,
                      margin: EdgeInsets.all(20),
                    )),
              ]),
            ),
            Row(
              children: [
                Expanded(
                    flex: 1,
                    child: Container(
                      color: Color.fromARGB(199, 229, 6, 6),
                      height: 100,
                    )),
                Expanded(
                    flex: 3,
                    child: Container(
                      color: Color.fromRGBO(6, 30, 239, 0.907),
                      height: 100,
                    )),
                Expanded(
                    flex: 2,
                    child: Container(
                      color: Color.fromRGBO(8, 228, 34, 0.926),
                      height: 100,
                    )),
                Expanded(
                    flex: 9,
                    child: Container(
                      color: Color.fromRGBO(228, 8, 184, 0.925),
                      height: 100,
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
