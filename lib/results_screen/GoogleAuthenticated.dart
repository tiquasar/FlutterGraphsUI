import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import '../main_authenticated.dart';

// ignore: must_be_immutable
class GoogleAuthenticated extends StatelessWidget {
  GoogleSignIn _googleSignIn;
  FirebaseUser _user;

  GoogleAuthenticated(FirebaseUser user, GoogleSignIn signIn) {
    _user = user;
    _googleSignIn = signIn;

    print(_user);
    print(_googleSignIn);
  }

  @override
  Widget build(BuildContext context) {
    return MyApp();
  }
}
