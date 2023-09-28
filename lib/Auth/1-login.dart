import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void mian() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp( Login());
}
class Login extends StatefulWidget {
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(padding: EdgeInsets.all(20),
        child: ListView(children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  alignment: Alignment.center,
                  width: 70,
                  height: 70,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(20)),
                  child: Image.asset(
                    "Images/logo.png",
                    width: 50,
                    height: 50,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Text("Login"),
              Text("Login To Continue Using this up")
            ],
          )
        ]),
      ),
    );
  }
}
