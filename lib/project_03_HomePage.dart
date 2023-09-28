import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter11/Categories/Set.dart';
import 'package:google_sign_in/google_sign_in.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<QueryDocumentSnapshot> data = [];

  bool isloading = true;
  getdata() async {
    QuerySnapshot querySnapshot = await FirebaseFirestore.instance
        .collection("categories")
        .where("id",
            isEqualTo: FirebaseAuth.instance.currentUser!
                .uid) //بيجي بس الي صاحي الايميل بيكون مدخلها
        .get();

    data.addAll(querySnapshot.docs);
    isloading = false;
    setState(() {});
  }

  @override
  void initState() {
    getdata();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.blue,
          child: Icon(Icons.add),
          onPressed: () {
            Navigator.of(context).pushNamed("AddCategory");
          }),
      appBar: AppBar(
        title: Text("Homepage"),
        actions: [
          IconButton(
              onPressed: () async {
                GoogleSignIn googleSignIn = GoogleSignIn();
                googleSignIn.disconnect();
                await FirebaseAuth.instance.signOut(); //هيعمل تسجيل خروج
                Navigator.of(context)
                    .pushNamedAndRemoveUntil("login", (Route) => false);
                Navigator.of(context).pushNamed("login");
              },
              icon: Icon(Icons.exit_to_app))
        ],
      ),
      body: isloading == true
          ? Center(child: CircularProgressIndicator())
          : GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 170,
                crossAxisCount: 2,
                childAspectRatio: 1.5,
              ),
              itemCount: data.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onLongPress: () {
                    AwesomeDialog(
                      context: context,
                      dialogType: DialogType.warning,
                      animType: AnimType.rightSlide,
                      btnCancelText: "delete",
                      btnCancelOnPress: () async {
                        await FirebaseFirestore.instance
                            .collection("categories")
                            .doc(data[index].id) //بنحدد ملف الي انا هلغيه
                            .delete();
                        Navigator.of(context).pushReplacementNamed("home");
                      },
                      btnOkText: "edit",
                      btnOkOnPress: () async {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => SetCategories(
                                  docid: data[index].id,
                                  oldname: '${data[index]["name"]}',
                                )));
                      },
                    )..show();
                  },
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        children: [
                          Image.asset(
                            "Images/folder.webp",
                            height: 100,
                          ),
                          Text("\n${data[index]["name"]}")
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
    );
  }
}
