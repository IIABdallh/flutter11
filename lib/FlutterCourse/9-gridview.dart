import 'package:flutter/material.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My App'),
        ),
        body: Container(
          child: GridView(
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              mainAxisExtent: 10,
              childAspectRatio: 3,
            ),
            scrollDirection: Axis.horizontal,
            children: [
              Container(
                
                color: Colors.black,
                child: const Text("wael"),
              ),
              Container(
                color: const Color.fromRGBO(235, 8, 8, 1),
                child: const Text("abdallh"),
              ),
              Container(
                color: const Color.fromRGBO(61, 3, 19, 1),
                child: const Text("mai"),
              ),
              Container(
                color: const Color.fromRGBO(67, 211, 10, 1),
                child: const Text("sa3yd"),
              ),
              Container(
                color: const Color.fromRGBO(4, 139, 184, 1),
                child: const Text("abdo"),
              ),
              Container(
                color: const Color.fromRGBO(161, 214, 3, 1),
                child: const Text("sayed"),
              ),
              Container(
                color: Colors.black,
                child: const Text("wael"),
              ),
              Container(
                color: const Color.fromRGBO(235, 8, 8, 1),
                child: const Text("abdallh"),
              ),
              Container(
                color: const Color.fromRGBO(61, 3, 19, 1),
                child: const Text("mai"),
              ),
              Container(
                color: const Color.fromRGBO(67, 211, 10, 1),
                child: const Text("sa3yd"),
              ),
              Container(
                color: const Color.fromRGBO(4, 139, 184, 1),
                child: const Text("abdo"),
              ),
              Container(
                color: const Color.fromRGBO(161, 214, 3, 1),
                child: const Text("sayed"),
              ),
              Container(
                color: Colors.black,
                child: const Text("wael"),
              ),
              Container(
                color: const Color.fromRGBO(235, 8, 8, 1),
                child: const Text("abdallh"),
              ),
              Container(
                color: const Color.fromRGBO(61, 3, 19, 1),
                child: const Text("mai"),
              ),
              Container(
                color: const Color.fromRGBO(67, 211, 10, 1),
                child: const Text("sa3yd"),
              ),
              Container(
                color: const Color.fromRGBO(4, 139, 184, 1),
                child: const Text("abdo"),
              ),
              Container(
                color: const Color.fromRGBO(161, 214, 3, 1),
                child: const Text("sayed"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

