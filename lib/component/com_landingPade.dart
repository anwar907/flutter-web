import 'package:flutter/material.dart';
import 'package:myweb/ficture/list_image.dart';
import 'package:myweb/widget/home/clipPath.dart';

List<Widget> pageChildren(double width, context){
    return <Widget>[
      
      Container(
        width: width,
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Measument \nBased care assistant",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40.0,
                  color: Colors.black),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Text(
                "Change the way you control, login and analyse information about patients with M-Care",
                style: TextStyle(fontSize: 16.0, color: Colors.black38),
              ),
            ),
          ],
        ),
      ),
      
      Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 40),
        child: Container(
          child: Image.asset(
          assetName, width: 400, height: 400,
        ),
        )
      )
          ],
        ),
      )
    ];
  }