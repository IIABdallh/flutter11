// ignore_for_file: file_names

import 'package:flutter/material.dart';

void mian() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("homebage"),
        ),
        body: Container(
          child: Image.network("اجيب لينك اي صوره واحطه هنا مع نعريف",
          fit: BoxFit.fill,//هتاخد طول وعرض اي حاجه انا هديهلها
          //fit:BoxFit.cover,هيحافظ علي طول بنسبه للعرض وهيقطع بقيت الاجزاء
          width: 500 ,
          height: 500,
          alignment: Alignment.center,
          ),
        ),
        // :body: Container(child: Image.asset("اجيب اسم صوره",),),
      ),
    );
  }
}
