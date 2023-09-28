import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(), // استخدم واجهة المستخدم الرئيسية هنا
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

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
                color: Colors.red,
                child: const Text("go to login page"),
                textColor: Colors.black,
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => const LoginScreen()));
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
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
      ),
      body: Column(
        children: [
          const Center(
            child: Text(
              "This is the login page",
              style: TextStyle(fontSize: 20),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: MaterialButton(
              color: Colors.red,
              child: const Text("back"),
              textColor: Colors.black,
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          )
        ],
      ),
    );
  }
}
//push اضافه 
//pushreplacment استبدال
//pop حذف 