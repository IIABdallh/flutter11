import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key); // تصحيح هنا
  @override
  State<MyApp> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  List images = [
    "Images/1.png", // قمت بإضافة "assets/" لمسار الصور
    "Images/2.jpg",
    "Images/3.png",
    "Images/4.jpg",
    "Images/456.jpg",
    "Images/logo.png",
  ];
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
              SizedBox(
                height: 300,
                child: PageView.builder(
                  itemCount: images.length,
                  itemBuilder: (context, i) {
                    return Image.asset(images[i], fit: BoxFit.fill);
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}


