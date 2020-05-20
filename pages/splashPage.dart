import 'dart:async';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class splashPage extends  StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3), () { //chhal dyal lw9t bach ydouz l login
      Navigator.pushReplacementNamed(context,
          "/login"); //bach mli ndir back ykhrj mn app nichan mayrj3ch liya l lhad la page
    });
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea( //safearea katgolih lblassa lifiha lblassa dyla lwifi charge l'heure mat9rbch liha

        child: Stack(

          children: <Widget>[
            Align(
              alignment: Alignment.center,
              child: Image(
                width: 160,
                height: 160,
                image: AssetImage("Assets/images/logo-RAHMA.png"),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                "Test Profiling...",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),

            ),
          ],
        ),
      ),
    );
  }
}