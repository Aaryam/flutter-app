import "package:flutter/widgets.dart";
import 'package:flutter/material.dart';

class SizeConfig {
 static MediaQueryData _mediaQueryData;
 static double screenWidth;
 static double screenHeight;
 static double blockSizeHorizontal;
 static double blockSizeVertical;
 
 void init(BuildContext context) {
  _mediaQueryData = MediaQuery.of(context);
  screenWidth = _mediaQueryData.size.width;
  screenHeight = _mediaQueryData.size.height;
  blockSizeHorizontal = screenWidth / 100;
  blockSizeVertical = screenHeight / 100;
 }
}

class ColorList {
  static Color primaryColor = Colors.black87;
  static Color secondaryColor = Colors.white;
  static Color thirdColor = Colors.indigo[900];
}