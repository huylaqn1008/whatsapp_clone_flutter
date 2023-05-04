// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_social/common/extension/custom_theme_extension.dart';
import 'package:flutter_social/common/untils/colours.dart';

ThemeData darkTheme() {
  final ThemeData base = ThemeData.dark();
  return base.copyWith(
    backgroundColor: Colours.backgroundDark,
    scaffoldBackgroundColor: Colours.backgroundDark,
    extensions: [
      CustomThemeExtension.darkMode
    ],
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colours.greenDark,
        foregroundColor: Colours.backgroundDark,
        splashFactory: NoSplash.splashFactory,
        elevation: 0,
        shadowColor: Colors.transparent,
      ),
    ),
  );
}
