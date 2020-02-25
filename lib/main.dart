import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:myweb/widget/home/LandingPage.dart';
import 'package:myweb/widget/navigationbar/navbar.dart';

void main() {
  FlutterError.onError = (FlutterErrorDetails details){
    FlutterError.dumpErrorToConsole(details);
    if(kReleaseMode)
    exit(1);
  };
runApp(MaterialApp(
  title: "Landing Page",
  debugShowCheckedModeBanner: true,
  // showSemanticsDebugger: true,
  theme: ThemeData(
    primarySwatch: Colors.blue 
  ),
  home: MyApp(),
));
} 

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage()
    );
  }
}

class HomePage extends StatelessWidget {
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
          children: <Widget>[Navbar(), LandingPage()],
        ),
      )
    );
  }
}