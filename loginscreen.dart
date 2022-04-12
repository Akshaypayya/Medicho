import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';
import 'homescreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'dart:async';

bool otpclicked = false;

// creating firebase instance
final FirebaseAuth auth = FirebaseAuth.instance;

Future<void> signup(BuildContext context) async {
  final GoogleSignIn googleSignIn = GoogleSignIn();
  final GoogleSignInAccount? googleSignInAccount = await googleSignIn.signIn();
  if (googleSignInAccount != null) {
    final GoogleSignInAuthentication googleSignInAuthentication =
        await googleSignInAccount.authentication;
    final AuthCredential authCredential = GoogleAuthProvider.credential(
        idToken: googleSignInAuthentication.idToken,
        accessToken: googleSignInAuthentication.accessToken);

    // Getting users credential
    UserCredential result = await auth.signInWithCredential(authCredential);
    User? user = result.user;

    if (result != null) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => HomeScreen()));
    }
  }
}
// Future<void> _signOut() async {
//   await FirebaseAuth.instance.signOut();
// }

class Loginscreen extends StatefulWidget {
  @override
  _Loginscreenstate createState() => _Loginscreenstate();
}

class _Loginscreenstate extends State<Loginscreen> {
  TextEditingController phonecontroller = TextEditingController();
  TextEditingController otpcontroller = TextEditingController();
  static const textbgcolor = Color(0xffDBDBDB);

  @override
  Widget build(BuildContext context) {
    return new WillPopScope(
      onWillPop: () async {
        showDialog(
          context: context,
          builder: (ctx) => AlertDialog(
            title: Text("Exit",
                style: TextStyle(
                    fontWeight: FontWeight.w800,
                    color: Color(0xffF3E31B),
                    fontFamily: 'Montserrat')),
            content: Text(
              "Are you sure you want to exit?",
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  color: Colors.black,
                  fontFamily: 'Montserrat'),
            ),
            actions: <Widget>[
              FlatButton(
                color: Color(0xffF3E31B),
                onPressed: () {
                  Future.delayed(const Duration(milliseconds: 1000), () {
                    SystemChannels.platform.invokeMethod('SystemNavigator.pop');
                  });
                },
                child: Text(
                  "YES",
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      color: Colors.white,
                      fontFamily: 'Montserrat'),
                ),
              ),
              Spacer(),
              FlatButton(
                color: Color(0xffF3E31B),
                onPressed: () {
                  Navigator.of(ctx).pop();
                },
                child: Text(
                  "CANCEL",
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      color: Colors.white,
                      fontFamily: 'Montserrat'),
                ),
              ),
            ],
          ),
        );
        return true;
      },

      child: Scaffold(
          // resizeToAvoidBottomInset: false,
          backgroundColor: Color(0xffF3E31B),
          body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset("assets/Images/logo.jpg",
                      height: 300, width: 300),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 50,
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: TextField(
                        controller: phonecontroller,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          fillColor: textbgcolor,
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  BorderSide(color: Colors.black, width: 1)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  BorderSide(color: Colors.black, width: 1)),
                          hintText: 'Mobile Number',
                          hintStyle: TextStyle(
                              fontWeight: FontWeight.normal,
                              color: Colors.black,
                              fontFamily: 'Montserrat'),
                        )),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 50,
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    width: MediaQuery.of(context).size.width - 60,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10)),
                    child: FlatButton(
                      onPressed: () {
                        FocusScope.of(context).unfocus();
                        String strphone = phonecontroller.text;
                        if (strphone.isEmpty) {
                          Fluttertoast.showToast(
                            msg: "Mobile Number Required",
                            backgroundColor: Colors.grey,
                          );
                        } else {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => HomeScreen()));
                        }
                      },
                      child: Text(
                        'LOGIN',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontFamily: 'Montserrat',
                            fontSize: 25),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    //padding: const EdgeInsets.only(left: 32, right: 32),
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: MaterialButton(
                      color: Colors.teal[100],
                      elevation: 10,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: 45.0,
                              width: 35.0,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/Images/googleimages.png'),
                                      fit: BoxFit.cover),
                                  shape: BoxShape.circle),
                            ),
                            SizedBox(
                              width: 55,
                            ),
                            Text(
                              "Sign In with Google",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  //fontFamily: 'Montserrat',
                                  fontSize: 20),
                            )
                          ]),
                      onPressed: () {
                        signup(context);
                      },
                    ),
                  ),
                ]),
          )),
      //),
    );
  }
}
