import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mentor_me/screen/onBoarding.dart';

class splashscreenpage extends StatefulWidget {
  const splashscreenpage({Key? key}) : super(key: key);

  @override
  State<splashscreenpage> createState() => _splashscreenpageState();
}

class _splashscreenpageState extends State<splashscreenpage> {
  @override
  void initState() {
    // TODO: implement initState
    Timer(Duration(seconds: 3), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => OnboardingPage()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset(
          "assets/images/Logo.png",
          width: 200,
          height: 88,
      ),
      ),
    );
  }
}