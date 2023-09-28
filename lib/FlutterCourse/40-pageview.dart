import 'package:flutter/material.dart';

void mian() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("MyApp"),
        ),
        body: Container(
          padding: const EdgeInsets.all(20),
          margin: const EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                height: 300,
                child: PageView(
                  //يفضل تكون داخل كونتاينر علشان ميحصلش غطاء
                  onPageChanged: (value) {
                    print(value);
                  },
                  reverse: true,
                  //physics: NeverScrollableScrollPhysics(),بيعطل السكرول 
                  children: [
                    Image.asset(
                      "image/1.png",
                      fit: BoxFit.fill,
                    ),
                    Image.asset(
                      "image/3.png",
                      fit: BoxFit.fill,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
