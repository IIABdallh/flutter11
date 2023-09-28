import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter11/Companent/4-CoustomButton.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter11/companent/1-CoustomTextFormField.dart';

class AddCategories extends StatefulWidget {
  @override
  State<AddCategories> createState() => _AddCategoriesState();
}

class _AddCategoriesState extends State<AddCategories> {
  GlobalKey<FormState> formState = GlobalKey<FormState>();
  TextEditingController _nameController = TextEditingController();
  CollectionReference categories =
      FirebaseFirestore.instance.collection("categories");
  bool isloading = false;
  AddCategories() async {
    if (formState.currentState!.validate()) {
      try {
        isloading = true;
        setState(() {});
        await categories.add({
          "id": FirebaseAuth.instance.currentUser!.uid,
          "name": _nameController.text,
          "type": _nameController.text
        });
        Navigator.of(context).pushNamedAndRemoveUntil("home", (Route) => false);
      } catch (e) {
        isloading = false;
        setState(() {});
        print(e);
      }
    }
  }

  @override
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
                          mycontroller: _nameController,
                          validator: (Val) {
                            if (Val == "") {
                              return "enter name";
                            }
                            return null;
                          })),
                  CoustomButton(
                      buttonName: "add",
                      onPressed: () {
                        AddCategories();
                      })
                ],
              ),
      ),
    );
  }
}
