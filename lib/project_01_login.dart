import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter11/companent/1-CoustomTextFormField.dart';
import 'package:flutter11/companent/2-coustomLogo.dart';
import 'package:flutter11/companent/3-CoustomSignwith.dart';
import 'package:google_sign_in/google_sign_in.dart';

bool isloading = false;
bool isloadingGoogle = false;
void main() {
  runApp(Login());
}

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  Future signInWithGoogle(BuildContext context) async {
    setState(() {
      isloading = true;
    });
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
    if (googleUser == null) {
      return;
    }

    // Obtain the auth details from the request

    final GoogleSignInAuthentication? googleAuth =
        await googleUser.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    // Once signed in, return the UserCredential

    await FirebaseAuth.instance.signInWithCredential(credential);
    Navigator.of(context).pushNamedAndRemoveUntil("home", (Route) => false);

    setState(() {
      isloading = false;
    });
  }

  GlobalKey<FormState> formState = GlobalKey<FormState>();
  TextEditingController email = TextEditingController();
  TextEditingController password =
      TextEditingController(); // تم تعديل اسم المتغير

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isloading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : Container(
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
                          "Login",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Login To Continue Using The App",
                          style: TextStyle(color: Colors.grey),
                        ),
                        SizedBox(height: 20),
                        Coustomtextformfield(
                          title: "email",
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
                        InkWell(
                          onTap: () async {
                            if (email.text == "") {
                              AwesomeDialog(
                                context: context,
                                dialogType: DialogType.error,
                                animType: AnimType.rightSlide,
                                title: "error",
                                desc: 'enter the email first...',
                              )..show();
                              return;
                            }
                            try {
                              await FirebaseAuth.instance
                                  .sendPasswordResetEmail(
                                      email:
                                          email.text); //اعاده تعيين كلمه مرور
                              AwesomeDialog(
                                  context: context,
                                  dialogType: DialogType.success,
                                  animType: AnimType.rightSlide,
                                  desc:
                                      'A link to change your password has been sent to your email')
                                ..show();
                            } catch (e) {
                              AwesomeDialog(
                                context: context,
                                dialogType: DialogType.error,
                                animType: AnimType.rightSlide,
                                title: "error",
                                desc: 'make sure thats your email',
                              )..show();
                            }
                          },
                          child: Container(
                            margin: EdgeInsets.only(top: 15, bottom: 25),
                            width: 1000,
                            child: Text(
                              "forget password?",
                              style: TextStyle(fontSize: 18),
                              textAlign: TextAlign.right,
                            ),
                          ),
                        ),
                        Container(
                          height: 50,
                          width: 1000,
                          child: MaterialButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(60),
                            ),
                            color: Colors.orange[600],
                            child: Text(
                              "Login",
                              style: TextStyle(color: Colors.white),
                            ),
                            onPressed: () async {
                              if (formState.currentState!.validate()) {
                                {
                                  try {
                                    isloading = true;
                                    setState(() {});
                                    final credential = await FirebaseAuth
                                        .instance
                                        .signInWithEmailAndPassword(
                                            email: email.text,
                                            password: password.text);
                                    isloading = false;
                                    setState(() {});
                                    if (credential.user!.emailVerified) {
                                      Navigator.of(context)
                                          .pushReplacementNamed("home");
                                    } else {
                                      FirebaseAuth.instance.currentUser!
                                          .sendEmailVerification();
                                      AwesomeDialog(
                                        context: context,
                                        dialogType: DialogType.error,
                                        animType: AnimType.rightSlide,
                                        title: 'Error',
                                        desc: 'verife your email...',
                                      )..show();
                                    }
                                  } on FirebaseAuthException catch (e) {
                                    isloading = false;
                                    setState(() {});
                                    if (e.code == 'user-not-found') {
                                      AwesomeDialog(
                                        context: context,
                                        dialogType: DialogType.error,
                                        animType: AnimType.rightSlide,
                                        title: 'Error',
                                        desc: 'No user found for that email.',
                                      )..show();
                                    } else if (e.code == 'wrong-password') {
                                      AwesomeDialog(
                                        context: context,
                                        dialogType: DialogType.error,
                                        animType: AnimType.rightSlide,
                                        title: 'Error',
                                        desc:
                                            'Wrong password provided for that user.',
                                      )..show();
                                    }
                                  }
                                }
                              }
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "OR Login With",
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Center(
                            child: CoustomSignWith(
                              imagesignwith: "google (2).png",
                              onPressed: () {
                                signInWithGoogle(context);
                              },
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 60,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pushReplacementNamed("signup");
                    },
                    child: Center(
                      child: Text.rich(
                        TextSpan(children: [
                          TextSpan(
                            text: "Don't Have An Email?",
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                          TextSpan(
                            text: " Register Now",
                            style: TextStyle(
                              color: Colors.blue[300],
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ]),
                      ),
                    ),
                  )
                ],
              ),
            ),
    );
  }
}
