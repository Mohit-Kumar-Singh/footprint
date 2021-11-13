import 'dart:async';
import 'package:flutter/material.dart';
import 'introduction_animation/introduction_animation_screen.dart';
import 'package:footprints/pages/home/homepage.dart';
import 'package:footprints/pages/login/login_page.dart';
import 'package:footprints/services/sharedprefrences.dart';

class SplashScreen extends StatefulWidget {
  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  final PrefService _prefService = PrefService();

  @override
  void initState() {
    super.initState();
    startup();
  }

  void startup() async {
    await Future.delayed(Duration(milliseconds: 300));
    String token = await _prefService.readCache(PrefService.UID);

    if (token == "Null") {
      String firstTime = await _prefService.readCache(PrefService.FIRST_TIME);
      if (firstTime == "Null" || firstTime == "true") {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (_) => IntroductionAnimationScreen(),
          ),
        );
      } else {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => FirebaseLogin(),
          ),
        );
      }
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => HomePage(),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Icon(
        Icons.app_blocking,
      )),
    );
  }
}
