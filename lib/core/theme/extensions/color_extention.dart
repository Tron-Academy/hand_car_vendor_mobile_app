import 'package:flutter/material.dart';

class ColorExtention extends ThemeExtension<ColorExtention> {
// App default colors

  final Color primary;
  final Color primaryTxt;
  final Color secondaryTxt;
  final Color background;
  final Color backgroundSubtle;
  final Color white;
  final Color warning;

  ColorExtention(
      {required this.primary,
      required this.primaryTxt,
      required this.secondaryTxt,
      required this.background,
      required this.backgroundSubtle,
      required this.white,
      required this.warning,
      
      });
  @override
  ThemeExtension<ColorExtention> copyWith({
    Color? primary,
    Color? primaryTxt,
    Color? secondaryTxt,
    Color? background,
    Color? backgroundSubtle,
    Color? white,
    Color? warning,
    

    
  }) {
    return ColorExtention(
        primary: primary ?? this.primary,
        primaryTxt: primaryTxt ?? this.primaryTxt,
        secondaryTxt: secondaryTxt ?? this.secondaryTxt,
        background: background ?? this.background,
        backgroundSubtle: backgroundSubtle ?? this.backgroundSubtle,
        white: white ?? this.white,
        warning: warning ?? this.warning,
  
       
        );
  }

  @override
  ThemeExtension<ColorExtention> lerp(
      covariant ThemeExtension<ColorExtention>? other, double t) {
    if (other is! ColorExtention) {
      return this;
    }
    return ColorExtention(
        primary: Color.lerp(primary, other.primary, t)!,
        primaryTxt: Color.lerp(primaryTxt, other.primaryTxt, t)!,
        secondaryTxt: Color.lerp(secondaryTxt, other.secondaryTxt, t)!,
        background: Color.lerp(background, other.background, t)!,
        backgroundSubtle:
            Color.lerp(backgroundSubtle, other.backgroundSubtle, t)!,
        white: Color.lerp(white, other.white, t)!,
        warning: Color.lerp(warning, other.warning, t)!,
       
        );
  }
}
