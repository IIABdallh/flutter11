import 'package:flutter/material.dart';

//علشان لو كنت عاوز اطبع حاجات كتير
void main() {
  runApp(Myapp());
}

// ignore: must_be_immutable
class Myapp extends StatelessWidget {
  var emploee = [
    {"name": "abdallh"},
    {"name": "mamdouh"},
    {
      "name": "ali",
    },
    {
      "name": "ahmed",
    },
    {
      "name": "mhomd",
    },
    {
      "name": "anas",
    },
    {"name": "mai"},
  ];

  Myapp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          ListView.separated(
            shrinkWrap: true,//لازم اعملها علشان الحاجت تظهر
            physics:const NeverScrollableScrollPhysics(),
            separatorBuilder: (context, index) {
              return Container(height: 19  ,color: const Color.fromRGBO(10, 208, 7, 1),);
            },
            itemCount: emploee.length,
            itemBuilder: (context, i) {
              return Container(
                  width: 55,
                  height: 100,
                  color: i.isEven
                      ? Colors.black
                      : const Color.fromRGBO(243, 33, 33, 1),
                  child: Text(
                    emploee[i]["name"]!,
                    style: const TextStyle(
                        color: Color.fromARGB(255, 2, 242, 62), fontSize: 60),
                    textAlign: TextAlign.center,
                  ));
            },
          ),
        ],
      ),
    ));
  }
}
