import 'package:flutter/material.dart';
import 'package:myweb/component/com_login.dart';

class PageLogin extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var loginScreen = MediaQuery.of(context).size;
    if(loginScreen.width > 800){
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: loginPage(loginScreen.width / 2)
      );
    }else{
      return Column(
        children: loginPage(loginScreen.width)
      );
    }
  }
}