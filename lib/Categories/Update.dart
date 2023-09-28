import 'package:flutter/material.dart';
import 'package:flutter11/Companent/4-CoustomButton.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter11/companent/1-CoustomTextFormField.dart';

class UppdateCategores extends StatefulWidget {
  @override
  State<UppdateCategores> createState() => _UppdateCategoresState();
  final String docid;
  final String oldname;
  UppdateCategores({required this.docid, required this.oldname});
}

class _UppdateCategoresState extends State<UppdateCategores> {
  GlobalKey<FormState> formState = GlobalKey<FormState>();
  TextEditingController name = TextEditingController();
  CollectionReference categories =
      FirebaseFirestore.instance.collection("categories");
  bool isloading = false;

  UppdateCategores() async {
    if (formState.currentState!.validate()) {
      try {
        isloading = true;
        setState(() {});
        await categories.doc(widget.docid).update({"name": name.text});
        Navigator.of(context).pushNamedAndRemoveUntil("home", (Route) => false);
      } catch (e) {
        isloading = false;
        setState(() {});
        print(e);
      }
    }
  }

  @override
  void initState() {
    super.initState();
    name.text = widget.oldname;
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Add categories")),
      body: Form(
        key: formState,
        child: isloading
            ? Center(
                child: CircularProgressIndicator(),
              )
            : Column(
                children: [
                  Padding(
                      padding: const EdgeInsets.all(25),
                      child: Coustomtextformfield(
                          title: "enter",
                          hinttext: "name",
                          mycontroller: name,
                          validator: (Val) {
                            if (Val == "") {
                              return "enter name";
                            }
                            return null;
                          })),
                  CoustomButton(
                      buttonName: "save",
                      onPressed: () {
                        UppdateCategores();
                      })
                ],
              ),
      ),
    );
  }
}
