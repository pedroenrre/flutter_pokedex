import 'package:flutter/material.dart';
import 'package:pokedex/resources/app_text_styles.dart';

import 'app_colors.dart';

/// Global InputDecorationTheme
InputDecorationTheme kInputDecorationTheme = InputDecorationTheme(
  filled: false,
  labelStyle: getGreyStyle(),
  hintStyle: getGreyStyle(),
  disabledBorder: OutlineInputBorder(
    borderSide: BorderSide(
      color: AppColors.primary,
      width: 1,
    ),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(
      color: AppColors.primary,
      width: 1,
    ),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(
      color: AppColors.primary,
      width: 1,
    ),
  ),
  errorBorder: OutlineInputBorder(
    borderSide: BorderSide(
      color: AppColors.primary,
      width: 1,
    ),
  ),
  focusedErrorBorder: OutlineInputBorder(
    borderSide: BorderSide(
      color: AppColors.primary,
      width: 1,
    ),
  ),
);

ThemeData getLightTheme() {
  return ThemeData(
      // main colors of the app
      primaryColor: AppColors.primary,
      colorScheme: ColorScheme.fromSwatch().copyWith(
        primary: AppColors.primary,
      ),
      scaffoldBackgroundColor: AppColors.white,
      iconTheme: IconThemeData(color: AppColors.primary),
      inputDecorationTheme: kInputDecorationTheme);
}

ThemeData getDarkTheme() {
  return ThemeData(
      // main colors of the app
      primaryColor: AppColors.primary,
      colorScheme: ColorScheme.fromSwatch().copyWith(
        primary: AppColors.primary,
      ),
      scaffoldBackgroundColor: AppColors.darkBackground,
      iconTheme: IconThemeData(color: AppColors.primary),
      inputDecorationTheme: kInputDecorationTheme);
}
