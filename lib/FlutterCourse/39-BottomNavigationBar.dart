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
  int selectedindex = 0;
  List<Widget> listwidget = [
    const Text(
      "page Shop ",
      style: TextStyle(fontSize: 50),
    ),
    const Text(
      "page favorites",
      style: TextStyle(fontSize: 50),
    ),
    const Text(
      "page Home ",
      style: TextStyle(fontSize: 50),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            setState(() {
              selectedindex = value; //علشان اعرف اتنقل بين الصفاحات
            });
          },
          currentIndex: selectedindex,
          backgroundColor: const Color.fromARGB(255, 53, 101, 141),
          selectedFontSize: 20,
          unselectedFontSize: 15,
          selectedItemColor: Colors.white,
          selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
          unselectedItemColor: Colors.black,
          unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.w300),
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.shop), label: "Shop"),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: "Favorites",
            ),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
          ],
        ),
        appBar: AppBar(
          title: const Text("MyApp"),
        ),
        body: listwidget.elementAt(selectedindex),//علشان اعرض البيانات
      ),
    );
  }
}
