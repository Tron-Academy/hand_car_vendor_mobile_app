import 'package:flutter/material.dart';
import 'package:handcar_ventor/core/theme/color_palette.dart';
import 'package:handcar_ventor/core/theme/extensions/color_extention.dart';
import 'package:handcar_ventor/core/theme/extensions/space_extension.dart';
import 'package:handcar_ventor/core/theme/extensions/typography_extention.dart';
import 'package:handcar_ventor/gen/fonts.gen.dart';

final darkTheme = ThemeData(
  brightness: Brightness.dark,
  useMaterial3: true,
  extensions: [
    ColorExtention(
      primary: ColorPalette.blue400,
      background: ColorPalette.black400,
      primaryTxt: ColorPalette.white,
      secondaryTxt: ColorPalette.grey100,
      white: ColorPalette.black400,
      warning: ColorPalette.red,
      backgroundSubtle: const Color(0xff1E1E1E),
    ),
    TypographyExtention(
      h1: TextStyle(
        fontSize: 34,
        fontFamily: FontFamily.manrope,
        color: ColorPalette.white,
        fontWeight: FontWeight.bold,
      ),
      h2: TextStyle(
        fontSize: 24,
        fontFamily: FontFamily.manrope,
        color: ColorPalette.white,
        fontWeight: FontWeight.bold,
      ),
      h3: TextStyle(
        fontSize: 20,
        fontFamily: FontFamily.manrope,
        color: ColorPalette.white,
        fontWeight: FontWeight.bold,
      ),
      subtitle: TextStyle(
        fontSize: 14,
        fontFamily: FontFamily.manrope,
        color: ColorPalette.white,
        fontWeight: FontWeight.w400,
      ),
      body: TextStyle(
        fontSize: 14,
        fontFamily: FontFamily.manrope,
        color: ColorPalette.white,
        fontWeight: FontWeight.w400,
      ),
      bodyMedium: TextStyle(
        fontSize: 14,
        fontFamily: FontFamily.manrope,
        color: ColorPalette.white,
        fontWeight: FontWeight.w500,
      ),
      bodySemiBold: TextStyle(
        fontSize: 14,
        fontFamily: FontFamily.manrope,
        color: ColorPalette.white,
        fontWeight: FontWeight.w600,
      ),
      bodySmall: TextStyle(
        fontSize: 12,
        fontFamily: FontFamily.manrope,
        color: ColorPalette.white,
        fontWeight: FontWeight.w400,
      ),
      bodySmallMedium: TextStyle(
        fontSize: 12,
        fontFamily: FontFamily.manrope,
        color: ColorPalette.white,
        fontWeight: FontWeight.w500,
      ),
      bodySmallSemiBold: TextStyle(
        fontSize: 12,
        fontFamily: FontFamily.manrope,
        color: ColorPalette.white,
        fontWeight: FontWeight.w600,
      ),
      bodyLarge: TextStyle(
        fontSize: 18,
        fontFamily: FontFamily.manrope,
        color: ColorPalette.white,
        fontWeight: FontWeight.w600,
      ),
      bodyLargeMedium: TextStyle(
        fontSize: 18,
        fontFamily: FontFamily.manrope,
        color: ColorPalette.white,
        fontWeight: FontWeight.w500,
      ),
      bodyLargeSemiBold: TextStyle(
        fontSize: 18,
        fontFamily: FontFamily.manrope,
        color: ColorPalette.white,
        fontWeight: FontWeight.w600,
      ),
      caption: TextStyle(
        fontSize: 12,
        fontFamily: FontFamily.manrope,
        color: ColorPalette.white,
        fontWeight: FontWeight.w400,
      ),
      buttonTxt: TextStyle(
        fontSize: 14,
        fontFamily: FontFamily.manrope,
        color: ColorPalette.white,
        fontWeight: FontWeight.w400,
      ),
      button2: TextStyle(
        fontSize: 16,
        fontFamily: FontFamily.manrope,
        color: ColorPalette.white,
        fontWeight: FontWeight.w400,
      ),
    ),
    AppSpaceExtension.fromBaseSpace(8),
  ],
);