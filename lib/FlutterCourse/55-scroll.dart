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
  late ScrollController scrollcontroller;
  @override
  void initState() {
    scrollcontroller = ScrollController();
    scrollcontroller.addListener(() {

      print("${scrollcontroller.offset}");//بتجيب قيمه الانزياح
    });
    super.initState();
  }
  @override
  void dispose() {
    scrollcontroller = ScrollController();//بنعمله علشان يخفف الضغط
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("MyApp"),
        ),
        body: ListView(
          controller: scrollcontroller,
          children: [
            MaterialButton(onPressed: (){
              scrollcontroller.animateTo(9432.57142857143, duration: Duration(seconds: 10), curve: Curves.ease);
            },child: Text("jumb to bottom"),
            ),
            ...List.generate(
                101,
                (index) => Container(
                      alignment: Alignment.center,
                      color: index.isEven ? Colors.red : Colors.green,
                      height: 100,
                      child: Text(
                        "$index",
                        style: const TextStyle(fontSize: 25),
                      ),
                    ),),MaterialButton(onPressed: (){
              scrollcontroller.animateTo(0,
                    duration: Duration(seconds: 1), curve: Curves.easeInOut);
            },child: Text("jumb to top "),),
          ],
        ),
      ),
    );
  }
}
