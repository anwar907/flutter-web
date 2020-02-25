import 'package:flutter/material.dart';
import 'package:myweb/widget/login/login_page.dart';
import 'package:myweb/widget/login/nav_login.dart';

class Login extends StatelessWidget {
  const Login({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home: LoginPage()
    );
  }
}

class LoginPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient( 
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Color.fromRGBO(255, 255, 255, 1), 
              Color.fromRGBO(153, 204, 255, 1.0)]
          )
        ),
        child: Column(
          children: <Widget>[NavbarLogin(), PageLogin()],
        ),
      )
    );
  }
}