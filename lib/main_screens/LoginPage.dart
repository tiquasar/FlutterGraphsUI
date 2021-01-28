import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_development/results_screen/GoogleAuthenticated.dart';
import 'package:flutter_app_development/main_screens/RegisterPage.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter_app_development/results_screen/GoogleAuthenticated.dart';
import 'package:flutter_app_development/results_screen/Authenticated.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';

bool _wrongEmail = false;
bool _wrongPassword = false;

FirebaseUser _user;

// ignore: must_be_immutable
class LoginPage extends StatefulWidget {
  static String id = '/LoginPage';

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email;
  String password;

  bool _showSpinner = false;

  final GoogleSignIn _googleSignIn = GoogleSignIn();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<FirebaseUser> _handleSignIn() async {
    bool isSignedIn = await _googleSignIn.isSignedIn();
    if (isSignedIn) {
      _user = await _auth.currentUser();
    } else {
      final GoogleSignInAccount googleUser = await _googleSignIn.signIn();
      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;

      final AuthCredential credential = GoogleAuthProvider.getCredential(
          accessToken: googleAuth.accessToken, idToken: googleAuth.idToken);
      _user = (await _auth.signInWithCredential(credential)).user;
    }

    return _user;
  }

  void onGoogleSignIn(BuildContext context) async {
    setState(() {
      _showSpinner = true;
    });

    FirebaseUser user = await _handleSignIn();

    setState(() {
      _showSpinner = true;
    });

    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => GoogleAuthenticated(user, _googleSignIn)));
  }

  String emailText = 'Email does not match';
  String passwordText = 'Password does not match';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.white,
      body: ModalProgressHUD(
        inAsyncCall: _showSpinner,
        color: Colors.blueAccent,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Image.asset('assets/images/background.png'),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: 60.0, bottom: 20.0, left: 20.0, right: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Login',
                    style: TextStyle(fontSize: 50.0),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Welcome back,',
                        style: TextStyle(fontSize: 30.0),
                      ),
                      Text(
                        'Please login to your account.',
                        style: TextStyle(fontSize: 30.0),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      TextField(
                        keyboardType: TextInputType.emailAddress,
                        onChanged: (value) {
                          email = value;
                        },
                        decoration: InputDecoration(
                          hintText: 'Email',
                          labelText: 'Email',
                          errorText: _wrongEmail ? emailText : null,
                        ),
                      ),
                      SizedBox(height: 20.0),
                      TextField(
                        obscureText: true,
                        keyboardType: TextInputType.visiblePassword,
                        onChanged: (value) {
                          password = value;
                        },
                        decoration: InputDecoration(
                          hintText: 'Password',
                          labelText: 'Password',
                          errorText: _wrongPassword ? passwordText : null,
                        ),
                      ),
                    ],
                  ),
                  RaisedButton(
                    padding: EdgeInsets.symmetric(vertical: 10.0),
                    color: Color(0xff447def),
                    onPressed: () async {
                      setState(() {
                        _showSpinner = true;
                      });
                      try {
                        setState(() {
                          _wrongEmail = false;
                          _wrongPassword = false;
                        });
                        final newUser = await _auth.signInWithEmailAndPassword(
                            email: email, password: password);
                        if (newUser != null) {
                          Navigator.pushNamed(context, Authenticated.id);
                        }
                      } catch (e) {
                        print(e.code);
                        if (e.code == 'ERROR_WRONG_PASSWORD') {
                          setState(() {
                            _wrongPassword = true;
                          });
                        } else {
                          setState(() {
                            emailText = 'User doesn\'t exist';
                            passwordText = 'Please check your email';

                            _wrongPassword = true;
                            _wrongEmail = true;
                          });
                        }
                      }
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(fontSize: 25.0, color: Colors.white),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Container(
                          height: 1.0,
                          width: 60.0,
                          color: Colors.black87,
                        ),
                      ),
                      Text(
                        'or use Google Sign-In',
                        style: TextStyle(fontSize: 25.0),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Container(
                          height: 1.0,
                          width: 60.0,
                          color: Colors.black87,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: RaisedButton(
                          padding: EdgeInsets.symmetric(vertical: 5.0),
                          color: Colors.white,
                          shape: ContinuousRectangleBorder(
                            side:
                                BorderSide(width: 0.5, color: Colors.grey[400]),
                          ),
                          onPressed: () {
                            onGoogleSignIn(context);
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('assets/images/google.png',
                                  fit: BoxFit.contain,
                                  width: 40.0,
                                  height: 40.0),
                              Text(
                                'Google',
                                style: TextStyle(
                                    fontSize: 25.0, color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don\'t have an account?',
                        style: TextStyle(fontSize: 25.0),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, RegisterPage.id);
                        },
                        child: Text(
                          ' Sign Up',
                          style: TextStyle(
                              fontSize: 25.0, color: Colors.blue.shade800),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
