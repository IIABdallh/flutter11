import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter11/companent/1-CoustomTextFormField.dart';
import 'package:flutter11/companent/2-coustomLogo.dart';
import 'package:flutter11/companent/4-CoustomButton.dart';

void main() {
  runApp(SignUp());
}

class SignUp extends StatefulWidget {
  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  GlobalKey<FormState> formState = GlobalKey<FormState>();

  TextEditingController email = TextEditingController();
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          padding: EdgeInsets.all(20),
          child: ListView(
            children: [
              Form(
                key: formState,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 60,
                    ),
                    Center(child: CoustomLogo(imagelogo: "logo.png")),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "SignUp",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Enter Your Personal information",
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(height: 20),
                    Coustomtextformfield(
                      title: "Email",
                      hinttext: "Enter Email",
                      mycontroller: email,
                      validator: (val) {
                        if (val == "") {
                          return "cant be empty";
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 20),
                    Coustomtextformfield(
                      title: "Username",
                      hinttext: "Enter Username",
                      mycontroller: username,
                      validator: (val) {
                        if (val == "") {
                          return "cant be empty";
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 20),
                    Coustomtextformfield(
                      title: "Password",
                      hinttext: "Enter Password",
                      mycontroller: password,
                      validator: (val) {
                        if (val == "") {
                          return "cant be empty";
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 20),
                    SizedBox(height: 60),
                    CoustomButton(
                      buttonName: 'sign up',
                      onPressed: () async {
                        if (formState.currentState!.validate()) {
                          try {
                            final credential = await FirebaseAuth.instance
                                .createUserWithEmailAndPassword(
                              email: email.text,
                              password: password.text,
                            );
                            FirebaseAuth.instance.currentUser!
                                .sendEmailVerification();
                            Navigator.of(context).pushReplacementNamed("login");
                          } on FirebaseAuthException catch (e) {
                            if (e.code == 'weak-password') {
                              AwesomeDialog(
                                context: context,
                                dialogType: DialogType.error,
                                animType: AnimType.rightSlide,
                                title: 'Error',
                                desc: 'The password provided is too weak',
                              )..show();
                              print('The password provided is too weak.');
                            } else if (e.code == 'email-already-in-use') {
                              AwesomeDialog(
                                context: context,
                                dialogType: DialogType.error,
                                animType: AnimType.rightSlide,
                                title: 'Error',
                                desc:
                                    'The account already exists for that email..',
                              )..show();
                              print(
                                  'The account already exists for that email.');
                            }
                          } catch (e) {
                            print(e);
                          }
                        }
                      },
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
