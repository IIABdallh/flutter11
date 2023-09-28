import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

import 'project_01_login.dart';
import 'project_02_SignUp.dart';
import 'project_03_HomePage.dart';
import 'Categories/add.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user == null) {
        print('User is currently signed out!');
      } else {
        print('User is signed in!');
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          appBarTheme: AppBarTheme(
              backgroundColor: Colors.grey[100],
              titleTextStyle: TextStyle(
                color: Colors.blue,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              iconTheme: IconThemeData(color: Colors.blue))),
      debugShowCheckedModeBanner: false,
      routes: {
        "login": (context) => Login(),
        "signup": (context) => SignUp(),
        "home": (context) => HomePage(),
        "AddCategory": (context) => AddCategories(),
      },
      home: FirebaseAuth.instance.currentUser != null &&
              FirebaseAuth.instance.currentUser!.emailVerified
          ? HomePage()
          : Login(),
    );
  }
}
