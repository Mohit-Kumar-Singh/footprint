// import 'dart:async';
// import 'package:firebase_analytics/firebase_analytics.dart';
// import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:footprints/pages/homepage.dart';
// import 'package:footprints/services/sharedprefrences.dart';
// import 'package:google_sign_in/google_sign_in.dart';
// import 'package:firebase_auth/firebase_auth.dart';



// final kFirebaseAnalytics = FirebaseAnalytics();
//  var _auth = firebase_auth.FirebaseAuth.instance;
//   PrefService _prefService = PrefService();
//   FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
//   firebase_auth.User? user;
//   // If this._busy=true, the buttons are not clickable. This is to avoid
//   // clicking buttons while a previous onTap function is not finished.
//   bool _busy = false;



  
//  class LoginFunctions  with ChangeNotifier{
  
//    firebase_auth.User? user;
   





//   // Sign in with Google.
//   Future<firebase_auth.User?> googleSignIn() async {
//     var user;
//     final curUser = this.user ?? _auth.currentUser;
//     if (curUser != null && !curUser.isAnonymous) {
//       return curUser;
//     }
//     final googleUser = await GoogleSignIn().signIn();
//     final googleAuth = await googleUser.authentication; /////////
//     final credential = firebase_auth.GoogleAuthProvider.credential(
//       accessToken: googleAuth.accessToken,
//       idToken: googleAuth.idToken,
//     );
//     // Note: user.providerData[0].photoUrl == googleUser.photoUrl.
//     final user = (await _auth.signInWithCredential(credential)).user;
//     kFirebaseAnalytics.logLogin();
//    // setState(() => this._user = user);
//     return user;
//   }


 

//  Future<void> SignOut( BuildContext context, firebase_auth.User user) async {
//     final user = _auth.currentUser;
//     ScaffoldMessenger.of(context).showSnackBar(
//       SnackBar(
//         content: Text(user == null
//             ? 'No user logged in.'
//             : '"${user.displayName}" logged out.'),
//       ),
//     );
//     await _auth.signOut();
//     GoogleSignIn googleSignIn = new GoogleSignIn();
//     await googleSignIn.signOut();
//    // setState(() => this.user = null);
//     notifyListeners();
//   }


//  }


