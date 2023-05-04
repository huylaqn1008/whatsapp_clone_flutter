// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_social/common/extension/custom_theme_extension.dart';
import 'package:flutter_social/common/untils/colours.dart';

ThemeData lightTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    backgroundColor: Colours.backgroundLight,
    scaffoldBackgroundColor: Colours.backgroundLight,
    extensions: [
      CustomThemeExtension.lightMode
    ],
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colours.greenLight,
        foregroundColor: Colours.backgroundLight,
        splashFactory: NoSplash.splashFactory,
        elevation: 0,
        shadowColor: Colors.transparent,
      ),
    ),
  );
}
