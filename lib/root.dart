
import 'package:flutter/material.dart';
import 'auth.dart';
import 'login.dart';


class RootPage extends StatefulWidget{

  RootPage({this.auth});
  final BaseAuthFireBase auth;



  @override
  _RootPageState createState() => new _RootPageState();

}
enum Auth_Status{
  notSignIn,
  SignedIn,
}

class _RootPageState  extends State<RootPage> {

  Auth_Status _authStatus = Auth_Status.notSignIn;

  initState() {

    super.initState();
    widget.auth.currentUser().then((value)  {
      setState(() {
        //_authStatus = value == null ? Auth_Status.notSignIn : Auth_Status.SignedIn;
      });

    });
  }
  _signed() {
    setState(() {
      _authStatus = Auth_Status.SignedIn;
    });
  }


  @override
  Widget build(BuildContext context) {
    switch (_authStatus) {
      case Auth_Status.notSignIn:
        return LoginPage(
          authFireBase: widget.auth,
          onSignedIn: _signed,);
      case Auth_Status.SignedIn:
        return LoanScreen();
    }
  }


}
