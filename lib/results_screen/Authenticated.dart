import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_development/main_authenticated.dart';

FirebaseUser loggedInUser;

// ignore: must_be_immutable
class Authenticated extends StatefulWidget {
  static String id = '/Done';

  @override
  _AuthenticatedState createState() => _AuthenticatedState();
}

class _AuthenticatedState extends State<Authenticated> {
  final _auth = FirebaseAuth.instance;

  void getCurrentUser() async {
    try {
      //TODO 10 : New user variable to check if a newUser is signed in
      final user = await _auth.currentUser();
      //Equal to null if no user is signed in, else equal to new user details
      //TODO 11 : Use if else block to get the loggedInUser details
      if (user != null) {
        loggedInUser = user;
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  void initState() {
    super.initState();
    getCurrentUser();
  }

  @override
  Widget build(BuildContext context) {
    return MyApp();
  }
}
