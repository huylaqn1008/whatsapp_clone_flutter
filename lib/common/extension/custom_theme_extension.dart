import 'package:flutter/material.dart';
import 'package:flutter_social/common/untils/colours.dart';

extension ExtendedTheme on BuildContext {
  CustomThemeExtension get theme {
    return Theme.of(this).extension<CustomThemeExtension>()!;
  }
}

class CustomThemeExtension extends ThemeExtension<CustomThemeExtension> {
  static const lightMode = CustomThemeExtension(
    circleImageColor: Color(0xff25D366),
    grayColor: Colours.grayLight,
    blueColor: Colours.blueLight,
    langBtnBgColor: Color(0xffF7F8FA),
    langBtnHighLightColor: Color(0xffE8E8ED),
    authAppbarTextColor: Colours.greenLight,
  );

  static const darkMode = CustomThemeExtension(
    circleImageColor: Colours.greenDark,
    grayColor: Colours.grayDark,
    blueColor: Colours.blueDark,
    langBtnBgColor: Color(0xff182229),
    langBtnHighLightColor: Color(0xff09141A),
    authAppbarTextColor: Color(0xffE9EDEF),
  );

  final Color? circleImageColor;
  final Color? grayColor;
  final Color? blueColor;
  final Color? langBtnBgColor;
  final Color? langBtnHighLightColor;
  final Color? authAppbarTextColor;

  // Constructor
  const CustomThemeExtension({
    this.circleImageColor,
    this.grayColor,
    this.blueColor,
    this.langBtnBgColor,
    this.langBtnHighLightColor,
    this.authAppbarTextColor,
  });

  @override
  ThemeExtension<CustomThemeExtension> copyWith({
    Color? circleImageColor,
    Color? grayColor,
    Color? blueColor,
    Color? langBtnBgColor,
    Color? langBtnHighLightColor,
    Color? authAppbarTextColor,
  }) {
    return CustomThemeExtension(
        circleImageColor: circleImageColor ?? this.circleImageColor,
        grayColor: grayColor ?? this.grayColor,
        blueColor: blueColor ?? this.blueColor,
        langBtnBgColor: langBtnBgColor ?? this.langBtnBgColor,
        authAppbarTextColor: authAppbarTextColor ?? this.authAppbarTextColor,
        langBtnHighLightColor:
            langBtnHighLightColor ?? this.langBtnHighLightColor);
  }

  @override
  ThemeExtension<CustomThemeExtension> lerp(
      ThemeExtension<CustomThemeExtension>? other, double t) {
    if (other is! CustomThemeExtension) return this;
    return CustomThemeExtension(
      circleImageColor: Color.lerp(circleImageColor, other.circleImageColor, t),
      grayColor: Color.lerp(grayColor, other.grayColor, t),
      blueColor: Color.lerp(blueColor, other.blueColor, t),
      langBtnBgColor: Color.lerp(langBtnBgColor, other.langBtnBgColor, t),
      authAppbarTextColor: Color.lerp(authAppbarTextColor, other.authAppbarTextColor, t),
      langBtnHighLightColor:
          Color.lerp(langBtnHighLightColor, other.langBtnHighLightColor, t),
    );
  }
}
