import 'package:flutter/material.dart';

import './main_screens/LoginPage.dart';
import 'package:flutter_app_development/main_screens/RegisterPage.dart';
import 'results_screen/Authenticated.dart';

void main() => runApp(Home());

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: RegisterPage.id,
      routes: {
        RegisterPage.id: (context) => RegisterPage(),
        LoginPage.id: (context) => LoginPage(),
        Authenticated.id: (context) => Authenticated(),
      },
    );
  }
}
