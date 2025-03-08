import 'dart:ui';

import 'package:flutter/material.dart';

/// Custom theme extension for spacing system
class AppSpacing extends ThemeExtension<AppSpacing> {
  final double xs;
  final double sm;
  final double md;
  final double lg;
  final double xl;

  const AppSpacing({
    this.xs = 4.0,
    this.sm = 8.0,
    this.md = 16.0,
    this.lg = 24.0,
    this.xl = 32.0,
  });

  @override
  ThemeExtension<AppSpacing> copyWith({
    double? xs,
    double? sm,
    double? md,
    double? lg,
    double? xl,
  }) {
    return AppSpacing(
      xs: xs ?? this.xs,
      sm: sm ?? this.sm,
      md: md ?? this.md,
      lg: lg ?? this.lg,
      xl: xl ?? this.xl,
    );
  }

  @override
  ThemeExtension<AppSpacing> lerp(ThemeExtension<AppSpacing>? other, double t) {
    if (other is! AppSpacing) return this;
    return AppSpacing(
      xs: lerpDouble(xs, other.xs, t)!,
      sm: lerpDouble(sm, other.sm, t)!,
      md: lerpDouble(md, other.md, t)!,
      lg: lerpDouble(lg, other.lg, t)!,
      xl: lerpDouble(xl, other.xl, t)!,
    );
  }
}

/// App theme configuration
class AppTheme {
  static const _poppins = 'Poppins';
  static const _inter = 'Inter';
  static const _montserrat = 'Montserrat';

  // Colors
  static const primaryColor = Color(0xFF4A6FFF);
  static const secondaryColor = Color(0xFFFF4A85);
  static const accentColor = Color(0xFF42E695);
  static const backgroundColor = Colors.white;
  static const darkBackgroundColor = Color(0xFF111827);

  // Text Styles
  static final TextTheme textTheme = const TextTheme(
    displayLarge: TextStyle(
        fontFamily: _poppins, fontSize: 57, fontWeight: FontWeight.bold),
    displayMedium: TextStyle(
        fontFamily: _poppins, fontSize: 45, fontWeight: FontWeight.bold),
    displaySmall: TextStyle(
        fontFamily: _poppins, fontSize: 36, fontWeight: FontWeight.bold),
    headlineLarge: TextStyle(
        fontFamily: _poppins, fontSize: 32, fontWeight: FontWeight.bold),
    headlineMedium: TextStyle(
        fontFamily: _poppins, fontSize: 28, fontWeight: FontWeight.bold),
    headlineSmall: TextStyle(
        fontFamily: _poppins, fontSize: 24, fontWeight: FontWeight.bold),
    titleLarge: TextStyle(
        fontFamily: _montserrat, fontSize: 22, fontWeight: FontWeight.w600),
    titleMedium: TextStyle(
        fontFamily: _montserrat, fontSize: 16, fontWeight: FontWeight.w600),
    titleSmall: TextStyle(
        fontFamily: _montserrat, fontSize: 14, fontWeight: FontWeight.w600),
    bodyLarge: TextStyle(
        fontFamily: _inter, fontSize: 16, fontWeight: FontWeight.normal),
    bodyMedium: TextStyle(
        fontFamily: _inter, fontSize: 14, fontWeight: FontWeight.normal),
    bodySmall: TextStyle(
        fontFamily: _inter, fontSize: 12, fontWeight: FontWeight.normal),
    labelLarge: TextStyle(
        fontFamily: _montserrat, fontSize: 14, fontWeight: FontWeight.w600),
    labelMedium: TextStyle(
        fontFamily: _montserrat, fontSize: 12, fontWeight: FontWeight.w600),
    labelSmall: TextStyle(
        fontFamily: _montserrat, fontSize: 11, fontWeight: FontWeight.w600),
  );

  // Light Theme
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    primaryColor: primaryColor,
    scaffoldBackgroundColor: backgroundColor,
    colorScheme: const ColorScheme.light(
      primary: primaryColor,
      secondary: secondaryColor,
      tertiary: accentColor,
      surface: backgroundColor,
      onPrimary: Colors.white,
      onSecondary: Colors.white,
      onTertiary: Colors.white,
      onSurface: Colors.black,
    ),
    textTheme: textTheme,
    extensions: const [AppSpacing()],
  );

  // Dark Theme
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    primaryColor: primaryColor,
    scaffoldBackgroundColor: darkBackgroundColor,
    colorScheme: const ColorScheme.dark(
      primary: primaryColor,
      secondary: secondaryColor,
      tertiary: accentColor,
      surface: darkBackgroundColor,
      onPrimary: Colors.white,
      onSecondary: Colors.white,
      onTertiary: Colors.white,
      onSurface: Colors.white,
    ),
    textTheme: textTheme,
    extensions: const [AppSpacing()],
  );
}
