import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(), // استخدم واجهة المستخدم الرئيسية هنا
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MyApp"),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Center(
              child: Text(
                "homepage",
                style: TextStyle(fontSize: 30),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: MaterialButton(
                child: const Text("go to login page"),
                color: Colors.red,
                textColor: Colors.black,
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => LoginScreen()));
                //buildier هي ويدجيت بتقبل context
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
      ),
      body: const Center(
        child: Text(
          "This is the login page",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
//push اضافه 
//pushreplacment استبدال
//pop حذف 


