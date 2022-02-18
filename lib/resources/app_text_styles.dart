import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_colors.dart';

TextStyle getSplashStyle({fontSize = 24.0, fontWeight = FontWeight.w700}) {
  return GoogleFonts.poppins(
    fontSize: fontSize,
    fontWeight: fontWeight,
    color: AppColors.white,
  );
}

TextStyle getWhiteStyle({fontSize = 14.0, fontWeight = FontWeight.w400}) {
  return GoogleFonts.poppins(
    fontSize: fontSize,
    fontWeight: fontWeight,
    color: AppColors.white,
  );
}

TextStyle getPinkStyle({fontSize = 14.0, fontWeight = FontWeight.w400}) {
  return GoogleFonts.poppins(
    fontSize: fontSize,
    fontWeight: fontWeight,
    color: AppColors.primary,
  );
}

TextStyle getGreyStyle(
    {double fontSize = 14.0,
    fontWeight = FontWeight.w400,
    bool isDark = true}) {
  return GoogleFonts.poppins(
    fontSize: fontSize,
    fontWeight: fontWeight,
    color: isDark ? AppColors.content : AppColors.ligthContent,
  );
}
