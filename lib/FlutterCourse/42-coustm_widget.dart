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
          child: const Column(
            children: [
              card(
                name: "abdallh",
                email: 'Abdallh@gmail.com',
                date: "2022-12-16",
                imagename: 'logo.png',
              ),
              card(
                name: "mai",
                email: 'mai@gmail.com',
                date: "2000-5-16",
                imagename: '1.png',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class card extends StatelessWidget {
  final String name;
  final String email;
  final String date;
  final String imagename;

  const card(
      {super.key,
      required this.name,
      required this.email,
      required this.date,
      required this.imagename});

  @override
  Widget build(BuildContext context) {
    return Card(
      
      color: const Color.fromRGBO(255, 255, 255, 1),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          
          children: [
            Container(
              
              width: 100,
              height: 100,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(70),
                child: Image.asset(
                  "Images/$imagename",
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Expanded(
              child: ListTile(
                title: Text("$name"),
                subtitle: Text("$email"),
                trailing: Text("$date"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
