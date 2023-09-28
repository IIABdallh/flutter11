import 'package:flutter/material.dart';
//مش هيظهر سهم علشان يرجعني للصفحه الي قبلها

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homepage(),
    );
  }
}

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("homepage"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.all(20),
              child: const Center(
                  child: Text(
                "Homepage",
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              )),
            ),
            Center(
              child: MaterialButton(
                  color: Colors.amber,
                  child: const Text(
                    "go to LoginPage",
                    style: TextStyle(fontSize: 40),
                  ),
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => LoginPage()));
                  }),
            )
          ],
        ),
      ),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("homepage"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Center(
              child: Text(
            "this is LoginPage",
            style: TextStyle(fontSize: 40),
          )),
          
            Center(
              child: MaterialButton(
                  color: Colors.amber,
                  child: const Text(
                    "go to LoginPage",
                    style: TextStyle(fontSize: 40),
                  ),
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => Homepage()));
                  }),
            )
        ],
      ),
    );
  }
}
//push اضافه 
//pushreplacment استبدال
//pop حذف 