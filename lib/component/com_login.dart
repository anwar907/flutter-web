

import 'package:flutter/material.dart';
import 'package:myweb/ficture/list_image.dart';

List<Widget> loginPage(double width){
    return <Widget>[
      Container(
        padding: EdgeInsets.only(top: 100),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 100),
            child: Container(
              child: Image.asset(assetLogin, width: 400, height: 400,)
            ),
            ),
          ],
        ),
      ),
      Column(
        children: <Widget>[
          Padding(padding: EdgeInsets.only(bottom: 10, top: 100),
          child: Text("Welcome Back 😁", 
          style: TextStyle(fontSize: 24, color: Colors.black),),),
          Text("To keep connected with us please login with personal \ninformation by email address and password 🔔", 
          style: TextStyle(color: Color(0xFF424141)),),
          Container(
          decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.white, width: 0),
        borderRadius: BorderRadius.all(Radius.circular(18)),
      ),
        margin: EdgeInsets.all(15),
        padding: EdgeInsets.all(10),
        child: Column(
        children: <Widget>[
          SizedBox(
        width: 300,
        child: TextFormField(
        decoration: new InputDecoration(
          icon: Icon(Icons.mail),
          labelText: 'Enter email',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20)
          )
        ),
      ),
      ),
      SizedBox(
        height: 20,
      ),
      SizedBox(
        width: 300,
        child: TextFormField(
        decoration: new InputDecoration(
          icon: Icon(Icons.event_busy),
          labelText: 'Enter Password',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20)
          )
        ),
      ),
      ),
        ],
      ),
      ),
      Row(
        children: <Widget>[
        Container(
          width: 100,
          height: 40,
            child: MaterialButton(
              onPressed: (){},
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(30.0))
              ),
              child: Text("Login", style: TextStyle(color: Colors.black),),
            )),
            SizedBox(
              width: 20,
            ),
            Container(
              width: 100,
              height: 40,
              // paddiRng: const EdgeInsets.all(20),
            child: MaterialButton(
              onPressed: (){},
              color: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(30.0))
              ),
              child: Text("Register", style: TextStyle(color: Colors.white),),
            )),
            
        ],
      )
        ],
      )
    ];
  }