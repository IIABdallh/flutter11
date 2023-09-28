import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  State<MyApp> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  Future<List> getdata() async {
    //لازم نحدد نوعه
    var respnse = await http
        .get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));
    List respnsebody = jsonDecode(respnse.body);
    return respnsebody;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List>(
        builder:
            (context, snapshot) //snapshot في  getdata بتخزن المعلومات الي في
            {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasData) {
              return ListView.builder(
                  itemCount: snapshot.data!.length,
                  itemBuilder: ((context, index) {
                    return Card(
                      child: ListTile(
                        title: Text("${snapshot.data![index]["title"]}"),
                        subtitle: Text("${snapshot.data![index]["body"]}"),
                      ),
                    );
                  }));
            }
            if (snapshot.hasError) {
              return Center(child: Text("ERROR"));
            }
          }
          return Text("");
        },
        future: getdata(),
      ),
    );
  }
}
