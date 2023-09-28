import 'package:flutter/material.dart';
import 'package:awesome_dialog/awesome_dialog.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MyApp"),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            MaterialButton(
              child: Text("show alert"),
              onPressed: () {
                AwesomeDialog(
                  context: context,
                  btnOkIcon: Icons.ice_skating,
                  btnCancelIcon: Icons.star,
                  dialogType:
                      DialogType.noHeader, //بنعدل علي شكل الايكون الي فوق
                  animType: AnimType.rightSlide,
                  title: 'Dialog Title',
                  desc: 'Dialog description here.............',
                  btnCancelOnPress: () {
                    print("=========================");
                  },
                  btnOkOnPress: () {
                    print("+++++++++++++++++++++");
                  },
                ).show();
              },
            ),
          ],
        ),
      ),
    );
  }
}
