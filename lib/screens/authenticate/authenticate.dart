import 'package:coffeeshop/screens/authenticate/registerwithemail.dart';
import 'package:coffeeshop/screens/authenticate/signinemail.dart';
import 'package:flutter/material.dart';

class Authenticate extends StatefulWidget {
  const Authenticate({Key? key}) : super(key: key);

  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {

  bool showSignIn = true;

  void toggleView(){
    //print(showSignIn.toString());
    setState(() => showSignIn = !showSignIn);
  }

  @override
  Widget build(BuildContext context) {
    if (showSignIn) {
      return SignInEmail(toggleView:  toggleView);
    } else {
      return RegisterWithEmail(toggleView:  toggleView);
    }
  }
}