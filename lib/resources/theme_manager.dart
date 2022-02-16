import 'package:flutter/material.dart';

import 'app_colors.dart';

ThemeData getLightTheme() {
  return ThemeData(
    // main colors of the app
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.white,
  );
}

ThemeData getDarkTheme() {
  return ThemeData(
    // main colors of the app
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.darkBackground,
  );
}
