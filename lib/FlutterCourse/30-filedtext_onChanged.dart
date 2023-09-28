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
  String? text1;
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
              TextField(
                onChanged: (value) {
                  setState(() {
                    text1 = value;//بخزن قيمه جوا متغير و هعرضه في اي مكان 
                  });
                },
              ),
              Text("$text1"),//هعرضه هنا 
              MaterialButton(
                color: Colors.red,
                textColor: Colors.black,
                child: Text("print"),
                onPressed: (){
                
                print("----------------------------------------------------");
                print(text1);
              }),
              
            ],
          ),
        ),
      ),
    );
  }
}
