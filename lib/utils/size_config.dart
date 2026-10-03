import 'package:flutter/material.dart';

class SizeConfig {
  static const double desktopWidth = 900;
  static const double tabletWidth = 600;

  static late double height, width;

  static void init(BuildContext context) {
    height = MediaQuery.sizeOf(context).height;
    width = MediaQuery.sizeOf(context).width;
  }
}
