import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sampleproject/repository/authrepository.dart';
import 'package:sampleproject/widgets/ui.dart';


class LoginPage extends StatefulWidget {
  final authrepository _auth = authrepository.instance;

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _email = "";
  String _password = "";
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 40),
          color: Colors.blue,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image(
                  image:
                  AssetImage("assets/images/Instagram_logo_wordmark.png"),
                  width: 210,
                ),
                Container(
                  margin: EdgeInsets.only(top: 16),
                  child: CustomInputField(
                      Icon(Icons.person, color: Colors.white), 'Password'),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: CustomInputField(
                      Icon(Icons.lock, color: Colors.white), 'Password'),
                ),
                /*Container(
                  margin: EdgeInsets.only(top: 36),
                  child: Align(
                    alignment: AlignmentDirectional.center,
                    child: Text(
                      "Forgot password?",
                      style: TextStyle(
                        color: Color(0xFF0086EC),
                      ),
                    ),
                  ),
                ),*/  // ila bghit nzid mot de pass oublie
                Container(
                  margin:  EdgeInsets.only(top: 30),
                  width: 150,
                  child: RaisedButton(onPressed: (){login();},color: Colors.blueGrey,textColor: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    child: Text('login',

                      style:
                      TextStyle(
                          fontSize: 20.0
                      ),
                    ),

                  ),
                ),
                Container(
                  margin:  EdgeInsets.only(top: 20),
                  width: 150,
                  child: RaisedButton(onPressed: (){signUp();},color: Colors.blueGrey,textColor: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    child: Text('sign up',

                      style:
                      TextStyle(
                          fontSize: 20.0
                      ),
                    ),

                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  login() async {
    try {
      String uid = await widget._auth.login(_email, _password);
      Navigator.pushReplacementNamed(context, "/home");
    } on PlatformException catch (e) {
      showSnackBar(e.message);
    }
  }

  signUp() async {
    try {
      String uid = await widget._auth.signUp(_email, _password);
      debugPrint(uid);
      showSnackBar("all good");
    } on PlatformException catch (e) {
      showSnackBar(e.message);
    }
  }

  showSnackBar(String message) {
    _scaffoldKey.currentState.showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
  }
}