import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:flutter/material.dart';
import 'package:footprints/pages/home/homepage.dart';
import 'package:footprints/services/sharedprefrences.dart';
import 'package:google_sign_in/google_sign_in.dart';

class FirebaseLogin extends StatefulWidget {
  FirebaseLogin({Key? key}) : super(key: key);

  @override
  _FirebaseLoginState createState() => _FirebaseLoginState();
}

class _FirebaseLoginState extends State<FirebaseLogin> with ChangeNotifier {
  firebase_auth.FirebaseAuth _auth = firebase_auth.FirebaseAuth.instance;
  PrefService _prefService = PrefService();
  // ignore: unused_field
  firebase_auth.User? _user;
  // If this._busy=true, the buttons are not clickable. This is to avoid
  // clicking buttons while a previous onTap function is not finished.
  bool _busy = false;

  @override
  Widget build(BuildContext context) {
    final statusText = Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Text("login page"),
    );
    final googleLoginBtn = MaterialButton(
      color: Colors.blueAccent,
      onPressed: this._busy
          ? null
          : () async {
              setState(() => this._busy = true);
              final user = await this.googleSignIn();
              setState(() => this._busy = false);
              // TODO : firestore
              _prefService
                  .createCache(PrefService.UID, user.toString())
                  .whenComplete(() {
                if (user != null) {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => HomePage()));
                }
              });
            },
      child: const Text('Log in with Google'),
    );
    // TODO : Signout function
    // final signOutBtn = TextButton(
    //   onPressed: this._busy
    //       ? null
    //       : () async {
    //           setState(() => this._busy = true);
    //           await this.signOut();
    //           setState(() => this._busy = false);
    //         },
    //   child: const Text('Log out'),
    // );
    return Scaffold(
      body: Center(
        child: ListView(
          padding:
              const EdgeInsets.symmetric(vertical: 100.0, horizontal: 50.0),
          children: <Widget>[
            statusText,
            googleLoginBtn,
          ],
        ),
      ),
    );
  }

  Future<firebase_auth.User?> googleSignIn() async {
    final googleUser = await GoogleSignIn().signIn();
    final googleAuth = await googleUser?.authentication;
    final credential = firebase_auth.GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );
    // Note: user.providerData[0].photoUrl == googleUser.photoUrl.
    final user = (await _auth.signInWithCredential(credential)).user;
    setState(() => this._user = user);
    return user;
  }

  Future<void> signOut() async {
    final user = _auth.currentUser;
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(user == null
            ? 'No user logged in.'
            : '"${user.displayName}" logged out.'),
      ),
    );
    await _auth.signOut();
    GoogleSignIn googleSignIn = new GoogleSignIn();
    await googleSignIn.signOut();
    setState(() => this._user = null);
    notifyListeners();
  }
}
