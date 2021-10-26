import 'package:flutter/material.dart';
import 'package:footprints/login_page.dart';
import 'package:footprints/pages/homepage.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    startup();
  }

  startup() async {
    await Future.delayed(Duration(milliseconds: 300));
    SharedPreferences prefs = SharedPreferences.getInstance();
    String token = prefs.getString('token');
    if (token != null) {
      Navigator.push(context, MaterialPageRoute(builder: (_) => HomePage()));
    } else {
      Navigator.push(context, MaterialPageRoute(builder: (_) => LoginPage()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('loading...'),
      ),
    );
  }
}
