import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'color.dart';

class AppTextStyle {
  static TextStyle primaryTextStyle = GoogleFonts.lato(color: AppColors.primaryOrange, decoration: TextDecoration.none);
  static TextStyle lightTextStyle = GoogleFonts.lato(color: AppColors.primaryLight, decoration: TextDecoration.none);

  static TextStyle blackTextStyle = GoogleFonts.lato(color: AppColors.black, decoration: TextDecoration.none);

  static TextStyle redTextStyle = GoogleFonts.lato(color: AppColors.red, decoration: TextDecoration.none);

  static TextStyle whiteTextStyle = GoogleFonts.lato(color: Colors.white, decoration: TextDecoration.none);

  static TextStyle boldTextStyle = GoogleFonts.lato(color: Colors.white, decoration: TextDecoration.none);

  static TextStyle greyTextStyle = GoogleFonts.lato(color: AppColors.grayText, decoration: TextDecoration.none);

  static TextStyle greyLightTextStyle = GoogleFonts.lato(color: AppColors.gray, decoration: TextDecoration.none);
  static TextStyle blueTextStyle = GoogleFonts.lato(color: AppColors.blueDark, decoration: TextDecoration.none);
  static TextStyle greenTextStyle = GoogleFonts.lato(color: AppColors.green, decoration: TextDecoration.none);

  static TextStyle subTextStyle = GoogleFonts.lato(color: AppColors.subTitleColor, decoration: TextDecoration.none);

  static FontWeight light = FontWeight.w300;
  static FontWeight regular = FontWeight.w400;
  static FontWeight medium = FontWeight.w500;
  static FontWeight semiBold = FontWeight.w600;
  static FontWeight bold = FontWeight.w700;
}
