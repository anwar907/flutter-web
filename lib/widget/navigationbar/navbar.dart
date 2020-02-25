
import 'package:flutter/material.dart';
import 'package:myweb/component/com_NavDesktop.dart';
import 'package:myweb/component/com_mobile.dart';
import 'package:myweb/widget/login/login.dart';

class Navbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return LayoutBuilder(
      builder: (context, constraints) {
        if (screenSize.width > 1200) {
          return HomeDesktopNavbar();
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
          return HomeDesktopNavbar();
        } else if(constraints.maxWidth > 500 && constraints.maxWidth < 1200){
          return HomeDesktopNavbar();
        }else{
          return HomeMobileNavbar();
        }
      },
    );
  }
}
