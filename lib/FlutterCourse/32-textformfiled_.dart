import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  String? username, password;
  GlobalKey<FormState> Formstate = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("MyApp"),
        ),
        body: Container(
          padding: const EdgeInsets.all(20),
          margin: const EdgeInsets.all(20),
          child: Form(
            key: Formstate,
            child: Column(
              children: [
                TextFormField(
                  onSaved: (newValue) {
                    password = newValue;
                  },
                  decoration: const InputDecoration(hintText: "password"),
                  keyboardType:
                      TextInputType.phone, // يجعل الكيبورد نصوص الأرقام
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "الحقل فارغ";
                    } else if (value.length < 2) {
                      return "القيمة قصيرة جداً";
                    }
                    return null;
                  },
                ),
                TextFormField(
                  onSaved: (newValue) {
                    username = newValue;
                  },
                  decoration: const InputDecoration(hintText: "username"),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "الحقل فارغ";
                    }
                    return null;
                  },
                ),
                MaterialButton(
                  color: Colors.red,
                  textColor: Colors.amber,
                  child: const Text("Print"),
                  onPressed: () {
                    print("----------------------------------");
                    if (Formstate.currentState!.validate()) {
                      Formstate.currentState!.save();
                      print(username);
                      print(password);
                      print("Valid");
                    } else {
                      print("Not Valid");
                    }
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
