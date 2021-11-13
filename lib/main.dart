import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'pages/root/splashscreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Footprints',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: SplashScreen(),
    );
  }
}
