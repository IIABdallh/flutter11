import 'package:flutter/material.dart';
//نفس gridview 
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
          child: GridView.count(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
              reverse: false,
              crossAxisCount: 3,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 2,
              //mainAxisExtent: 100, لاتقبلها 
            
            children: [
              Container(
                color: const Color.fromRGBO(6, 10, 225, 1),
                child: const Text("wael 1"),
              ),
              Container(
                color: const Color.fromRGBO(235, 8, 8, 1),
                child: const Text("abdallh 2 "),
              ),
              Container(
                color: const Color(0xFFA40D93),
                child: const Text("mai 3"),
              ),
              Container(
                color: const Color.fromRGBO(67, 211, 10, 1),
                child: const Text("sa3yd 4"),
              ),
              Container(
                color: const Color.fromRGBO(4, 139, 184, 1),
                child: const Text("abdo 5 "),
              ),
              Container(
                color: const Color.fromRGBO(161, 214, 3, 1),
                child: const Text("sayed 6"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
