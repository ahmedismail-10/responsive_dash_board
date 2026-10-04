import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/size_config.dart';

abstract class AppStyles {
  static TextStyle styleRegular16(BuildContext context) {
    return TextStyle(
      color: const Color(0xff064061),
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontFamily: 'Montserrat',
      fontWeight: .w400,
    );
  }

  static TextStyle styleMedium16(BuildContext context) {
    return TextStyle(
      color: const Color(0xff064061),
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontFamily: 'Montserrat',
      fontWeight: .w500,
    );
  }

  static TextStyle styleSemiBold16(BuildContext context) {
    return TextStyle(
      color: const Color(0xff064061),
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontFamily: 'Montserrat',
      fontWeight: .w600,
    );
  }

  static TextStyle styleBold16(BuildContext context) {
    return TextStyle(
      color: const Color(0xff4EB7F2),
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontFamily: 'Montserrat',
      fontWeight: .w700,
    );
  }

  static TextStyle styleMedium20(BuildContext context) {
    return TextStyle(
      color: const Color(0xffFFFFFF),
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontFamily: 'Montserrat',
      fontWeight: .w500,
    );
  }

  static TextStyle styleSemiBold20(BuildContext context) {
    return TextStyle(
      color: const Color(0xff064061),
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontFamily: 'Montserrat',
      fontWeight: .w600,
    );
  }

  static TextStyle styleRegular12(BuildContext context) {
    return TextStyle(
      color: const Color(0xffAAAAAA),
      fontSize: getResponsiveFontSize(context, fontSize: 12),
      fontFamily: 'Montserrat',
      fontWeight: .w400,
    );
  }

  static TextStyle styleSemiBold24(BuildContext context) {
    return TextStyle(
      color: const Color(0xff4EB7F2),
      fontSize: getResponsiveFontSize(context, fontSize: 24),
      fontFamily: 'Montserrat',
      fontWeight: .w600,
    );
  }

  static TextStyle styleRegular14(BuildContext context) {
    return TextStyle(
      color: const Color(0xffAAAAAA),
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontFamily: 'Montserrat',
      fontWeight: .w400,
    );
  }

  static TextStyle styleSemiBold18(BuildContext context) {
    return TextStyle(
      color: const Color(0xffFFFFFF),
      fontSize: getResponsiveFontSize(context, fontSize: 18),
      fontFamily: 'Montserrat',
      fontWeight: .w600,
    );
  }

  // scaleFactor
  // responsive Font Size
  // (min, max) fontSize
  static double getResponsiveFontSize(
    BuildContext context, {
    required double fontSize,
  }) {
    double scaleFactor = getScaleFactor(context);
    double responsiveFontSize = fontSize * scaleFactor;

    double lowerLimit = fontSize * 0.8;
    double upperLimit = fontSize * 1.2;

    return responsiveFontSize.clamp(lowerLimit, upperLimit);
  }

  static double getScaleFactor(BuildContext context) {
    // var dispatcher = PlatformDispatcher.instance;
    // var physicalWidth = dispatcher.views.first.physicalSize.width;
    // var devicePixelRatio = dispatcher.views.first.devicePixelRatio;
    // double width = physicalWidth / devicePixelRatio;

    final width = MediaQuery.sizeOf(context).width;

    if (width < SizeConfig.mobileWidth) {
      return width / SizeConfig.mobileDesignWidth;
    } else if (width < SizeConfig.tabletWidth) {
      return width / SizeConfig.tabletDesignWidth;
    } else {
      return width / SizeConfig.desktopDesignWidth;
    }
  }
}
