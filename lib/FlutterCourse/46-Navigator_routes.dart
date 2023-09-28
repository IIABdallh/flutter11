import 'package:flutter/material.dart';

//بتحذف كل صفحات الي قبلها
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
                textColor: Colors.black,
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const LoginScreen()));
                },
                child: const Text("go to login page"),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: MaterialButton(
                color: Colors.red,
                textColor: Colors.black,
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const About()));
                },
                child: const Text("go to About page"),
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
              textColor: Colors.black,
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text("back"),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: MaterialButton(
              color: Colors.red,
              textColor: Colors.black,
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const About()));
              },
              child: const Text("go to About page"),
            ),
          )
        ],
      ),
    );
  }
}

class About extends StatelessWidget {
  const About({super.key});

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
              "This is the About page",
              style: TextStyle(fontSize: 20),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: MaterialButton(
              color: Colors.red,
              textColor: Colors.black,
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text("back"),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: MaterialButton(
              color: Colors.red,
              textColor: Colors.black,
              onPressed: () {
                Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(builder: (context) => const MyHomePage()),
                  (route) => false,
                );
              },
              child: const Text("go to Home page"),
            ),
          )
        ],
      ),
    );
  }
}
