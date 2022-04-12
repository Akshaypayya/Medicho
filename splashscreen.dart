import 'dart:async';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'loginscreen.dart';

class Splashscreen extends StatefulWidget {
  @override
  _Splashscreenstate createState() => _Splashscreenstate();
}

class _Splashscreenstate extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 4),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Loginscreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF3E31B),
      body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
            Image.asset("assets/Images/logo.jpg", height: 450, width: 450),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 250.0,
              child: DefaultTextStyle(
                style: const TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Montserrat'),
                child: AnimatedTextKit(
                  repeatForever: true,
                  isRepeatingAnimation: true,
                  animatedTexts: [
                    TyperAnimatedText(
                      'Happy Shopping with Medicho',
                      textStyle: TextStyle(color: Colors.black),
                    )
                  ],
                ),
              ),
            )
          ])),
    );
  }
}
