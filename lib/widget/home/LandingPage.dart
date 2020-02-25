import 'package:flutter/material.dart';
import 'package:myweb/component/com_landingPade.dart';

class LandingPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var displaySize = MediaQuery.of(context).size;
    return LayoutBuilder(
      builder: (context, constraints){
        if (displaySize.width > 800) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: pageChildren(displaySize.width / 2, context),
          );
        } else {
          return Column(
            children: pageChildren(displaySize.width,context),
          );
        }
      }
    );
    }
}