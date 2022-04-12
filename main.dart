import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'splashscreen.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(GoogleSignIn());
}

class GoogleSignIn extends StatefulWidget {
  @override
  _GoogleSignInState createState() => _GoogleSignInState();
}

class _GoogleSignInState extends State<GoogleSignIn> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle());
    return MaterialApp(
      theme: ThemeData(
          appBarTheme: AppBarTheme(
        color: Colors.black,
      )),
      debugShowCheckedModeBanner: false,
      home: Splashscreen(),
    );
  }
}
