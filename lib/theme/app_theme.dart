import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppTheme {
  static final theme = ThemeData(
    scaffoldBackgroundColor: AppColors.backgroundColor,
    appBarTheme: const AppBarTheme(
      color: AppColors.accentColorDark,
    ),
    hintColor: AppColors.accentColor,
  );
}
