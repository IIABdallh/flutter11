import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter11/Companent/4-CoustomButton.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter11/companent/1-CoustomTextFormField.dart';

class SetCategories extends StatefulWidget {
  @override
  State<SetCategories> createState() => _SetCategoriesState();
  final String docid;
  final String oldname;
  SetCategories({required this.docid, required this.oldname});
}

class _SetCategoriesState extends State<SetCategories> {
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
        await categories.doc("docid").set(
            {"name": name.text, "id": FirebaseAuth.instance.currentUser!.uid});
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
