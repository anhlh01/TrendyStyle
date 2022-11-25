import 'package:flutter/material.dart';
import 'package:trendy_style/utilities/colors.dart';

@immutable
class AppFonts {
  static String fontFamily = 'Poppins';
  // ignore: non_constant_identifier_names
  static TextStyle medium(double size) {
    return TextStyle(
        color: AppColors.mainText,
        fontFamily: fontFamily,
        fontWeight: FontWeight.w600,
        fontSize: size);
  }

  static TextStyle regular(double size) {
    return TextStyle(
        color: AppColors.mainText,
        fontFamily: fontFamily,
        fontWeight: FontWeight.w200,
        fontSize: size);
  }

  const AppFonts();
}