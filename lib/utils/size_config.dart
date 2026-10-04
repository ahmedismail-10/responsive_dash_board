import 'package:flutter/material.dart';

class SizeConfig {
  // Breakpoints
  static const double mobileWidth = 700;
  static const double tabletWidth = 1000;

  // Design reference widths
  static const double mobileDesignWidth = 400;
  static const double tabletDesignWidth = 800;
  static const double desktopDesignWidth = 1440;

  static late double height, width;

  static void init(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    width = size.width;
    height = size.height;
  }
}
