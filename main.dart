import 'package:flutter/material.dart';
import 'package:sampleproject/pages/login.dart';
import 'package:sampleproject/pages/home.dart';
import 'package:sampleproject/pages/splashPage.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram',
      routes: <String, WidgetBuilder>{
        "/": (context) => splashPage(),
        "/login": (context) => LoginPage(),
        "/timeline": (context) => Home(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}

