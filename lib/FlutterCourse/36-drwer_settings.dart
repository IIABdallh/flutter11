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
        drawer: Drawer(
            child: Container(
          padding: const EdgeInsets.all(15),
          child: ListView(
            children: [
              Row(
                children: [
                  Container(
                    width: 50, height: 50,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(
                            60), //عاشان اخلي الصوره دائريه
                        child: Image.asset(
                          'image/logo.png',
                          fit: BoxFit.cover,
                          alignment: Alignment.centerLeft,
                        )), //علشان اخلي صوره تاخد الابعاد المناسبه
                  ),
                  const Expanded(
                      child: ListTile(
                    title: Text("Abdallh"),
                    subtitle: Text("AbdallhMamdouh@gmail.com"),
                  )),
                ],
              ),
              const Expanded(child: ListTile(
                title: Text("homepage"),
                leading: Icon(Icons.home),
              )),
              const Expanded(
                  child: ListTile(
                title: Text("about"),
                leading: Icon(Icons.info),
              )),
              const Expanded(
                  child: ListTile(
                title: Text("contact"),
                leading: Icon(Icons.contact_mail),
              )),
              const Expanded(
                  child: ListTile(
                title: Text("account"),
                leading: Icon(Icons.email),
              )),
              const Expanded(
                  child: ListTile(
                title: Text("order"),
                leading: Icon(Icons.add_box_rounded),
              )),
              const Expanded(
                  child: ListTile(
                title: Text("addfriend"),
                leading: Icon(Icons.filter_list_outlined),
              )),
              const Expanded(
                  child: ListTile(
                title: Text("statu"),
                leading: Icon(Icons.stream_outlined),
              )),
              const Expanded(
                  child: ListTile(
                title: Text("homepage"),
                leading: Icon(Icons.home),
              )),
              const Expanded(
                  child: ListTile(
                title: Text("homepage"),
                leading: Icon(Icons.home),
              )),
              const Expanded(
                  child: ListTile(
                title: Text("signout"),
                leading: Icon(Icons.exit_to_app),
              )),
            ],
          ),
        )),
        appBar: AppBar(
          title: const Text("MyApp"),
        ),
        body: Container(
          padding: const EdgeInsets.all(20),
          margin: const EdgeInsets.all(20),
          child: const Column(
            children: [],
          ),
        ),
      ),
    );
  }
}
