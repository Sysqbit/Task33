import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../colors/app_colors.dart';
import '../text_styles/app_text_styles.dart';
part 'dark_theme.dart';
part 'light_theme.dart';

enum ThemeType { light, dark }

class AppTheme {
  final ThemeType type;
  AppTheme._(this.type);

  factory AppTheme.fromType(ThemeType type) => AppTheme._(type);

  ThemeData get themeData {
    switch (type) {
      case ThemeType.dark:
        return darkTheme;
      case ThemeType.light:
      default:
        return lightTheme;
    }
  }
}
