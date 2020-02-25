import 'package:flutter/material.dart';

class PageClipPath extends StatefulWidget {
  @override
  _PageClipPathState createState() => _PageClipPathState();
}

class _PageClipPathState extends State<PageClipPath> {
  @override
  Widget build(BuildContext context) {
    return Stack(
        children: <Widget>[
          // Stack(
          //   alignment: Alignment.bottomRight,
          //   children: <Widget>[
          //     new Container(
          //       padding: EdgeInsets.only(top: 50),
          //       child: new Image.asset('assets/bpkad.png', fit: BoxFit.contain,)
          //     )
              
          //   ],
          // ),
          // ClipPath(
          //   clipper: MyClipper2(),
          //   child: Container(
          //     width: double.infinity,
          //     height: 400,
          //     color: Colors.blueAccent,
          //   ),
          // ),

          
          // ClipPath(
          //   clipper: MyClipper3(),
          //   child: Container(
          //     margin: EdgeInsets.only(top: 650),
          //     width: double.infinity,
          //     height: 300,
          //     color: Colors.black,
          //   ),
          // ),

          new ClipPath(
            clipper: MyClipper(),
            child: Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  stops: [0.1, 0.5, 0.7, 0.9],
                  colors: [
                    Colors.orange[700],
                    Colors.orange[600],
                    Colors.orange[400],
                    Colors.orange[300],
                  ]
                ),
              ),
            ),
          ),
        ],
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  
  @override
  Path getClip(Size size){
    var path =Path();

    path.lineTo(0, size.height-100);
    path.quadraticBezierTo(size.width/4, size.height/2, size.width/4, size.height-100);
    path.quadraticBezierTo(size.width-(size.width/4), size.height-100, size.width, size.height-100);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper){
    return null;
  }
}

// class MyClipper2 extends CustomClipper<Path> {
  
//   @override
//   Path getClip(Size size){
//     var path =Path();

//     path.lineTo(0, size.height-200);
//     path.quadraticBezierTo(size.width/3.5, size.height/2, size.width/2, size.height-150);
//     path.quadraticBezierTo(size.width-(size.width/4), size.height-100, size.width, size.height-200);
//     path.lineTo(size.width, size.height);
//     path.lineTo(size.width, 0);
//     path.close();

//     return path;
//   }

//   @override
//   bool shouldReclip(CustomClipper<Path> oldClipper){
//     return null;
//   }
// }

// class MyClipper3 extends CustomClipper<Path> {

//   @override
//   Path getClip(Size size){
//     var path =Path();

//     path.lineTo(0, size.height-50);
//      path.quadraticBezierTo(size.width/4, size.height/2, size.width/2, size.height-100);
//     path.quadraticBezierTo(size.width-(size.width/4), size.height-50, size.width, size.height-100);
//     path.lineTo(size.width, size.height);
//     path.lineTo(size.width, 0);
//     path.close();
//     return null;
//   }

//   @override
//   bool shouldReclip(CustomClipper<Path> oldClipper){
//     return null;
//   }
  
// }