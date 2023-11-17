import 'package:flutter/material.dart';
import '../../core/app_export.dart';

String _appTheme = "primary";

/// Helper class for managing themes and colors.
class ThemeHelper {
  // A map of custom color themes supported by the app
  Map<String, PrimaryColors> _supportedCustomColor = {
    'primary': PrimaryColors()
  };

// A map of color schemes supported by the app
  Map<String, ColorScheme> _supportedColorScheme = {
    'primary': ColorSchemes.primaryColorScheme
  };

  /// Changes the app theme to [_newTheme].
  void changeTheme(String _newTheme) {
    _appTheme = _newTheme;
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors _getThemeColors() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedCustomColor.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    return _supportedCustomColor[_appTheme] ?? PrimaryColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedColorScheme.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.primaryColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      scaffoldBackgroundColor: appTheme.gray20002,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(9.h),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.transparent,
          side: BorderSide(
            color: appTheme.blueGray10001,
            width: 1.h,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.h),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateColor.resolveWith((states) {
          if (states.contains(MaterialState.selected)) {
            return colorScheme.primary;
          }
          return colorScheme.onSurface;
        }),
        side: BorderSide(
          width: 1,
        ),
        visualDensity: const VisualDensity(
          vertical: -4,
          horizontal: -4,
        ),
      ),
      dividerTheme: DividerThemeData(
        thickness: 1,
        space: 1,
        color: appTheme.blueGray100,
      ),
    );
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

/// Class containing the supported text theme styles.
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        bodyLarge: TextStyle(
          color: colorScheme.onPrimary,
          fontSize: 16.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: TextStyle(
          color: appTheme.black900,
          fontSize: 13.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
        bodySmall: TextStyle(
          color: appTheme.black900,
          fontSize: 12.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
        headlineLarge: TextStyle(
          color: appTheme.amber600,
          fontSize: 33.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w700,
        ),
        headlineSmall: TextStyle(
          color: appTheme.indigoA200,
          fontSize: 25.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
        labelLarge: TextStyle(
          color: appTheme.blueGray900,
          fontSize: 13.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        ),
        labelMedium: TextStyle(
          color: appTheme.blueGray400,
          fontSize: 10.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        ),
        labelSmall: TextStyle(
          color: colorScheme.onPrimary,
          fontSize: 9.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        ),
        titleLarge: TextStyle(
          color: appTheme.yellowA700,
          fontSize: 20.fSize,
          fontFamily: 'Podkova',
          fontWeight: FontWeight.w700,
        ),
        titleMedium: TextStyle(
          color: colorScheme.onPrimaryContainer,
          fontSize: 16.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
        ),
        titleSmall: TextStyle(
          color: appTheme.black900,
          fontSize: 15.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        ),
      );
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static final primaryColorScheme = ColorScheme.light(
    // Primary colors
    primary: Color(0XFF008430),
    primaryContainer: Color(0XFFFFFFFF),
    secondary: Color(0XFFFFFFFF),
    secondaryContainer: Color(0XFF07787F),
    tertiary: Color(0XFFFFFFFF),
    tertiaryContainer: Color(0XFF07787F),

    // Background colors
    background: Color(0XFFFFFFFF),

    // Surface colors
    surface: Color(0XFFFFFFFF),
    surfaceTint: Color(0XFFFFFFFF),
    surfaceVariant: Color(0XFF07787F),

    // Error colors
    error: Color(0XFFFFFFFF),
    errorContainer: Color(0XFF07787F),
    onError: Color(0XFF2E2E2E),
    onErrorContainer: Color(0XFFFFFFFF),

    // On colors(text colors)
    onBackground: Color(0XFF2E2E2E),
    onInverseSurface: Color(0XFF2E2E2E),
    onPrimary: Color(0XFFFFFFFF),
    onPrimaryContainer: Color(0XFF2E2E2E),
    onSecondary: Color(0XFF2E2E2E),
    onSecondaryContainer: Color(0XFFFFFFFF),
    onTertiary: Color(0XFF2E2E2E),
    onTertiaryContainer: Color(0XFFFFFFFF),

    // Other colors
    outline: Color(0XFFFFFFFF),
    outlineVariant: Color(0XFFFFFFFF),
    scrim: Color(0XFFFFFFFF),
    shadow: Color(0XFFFFFFFF),

    // Inverse colors
    inversePrimary: Color(0XFFFFFFFF),
    inverseSurface: Color(0XFFFFFFFF),

    // Pending colors
    onSurface: Color(0XFF2E2E2E),
    onSurfaceVariant: Color(0XFFFFFFFF),
  );
}

/// Class containing custom colors for a primary theme.
class PrimaryColors {
  // Amber
  Color get amber100 => Color(0XFFFFEDAB);
  Color get amber600 => Color(0XFFFFAF00);
  Color get amberA200 => Color(0XFFFFE148);

  // Black
  Color get black900 => Color(0XFF000000);

  // Blue
  Color get blue100 => Color(0XFFB4DDFB);
  Color get blue50 => Color(0XFFE5F5FC);

  // BlueGray
  Color get blueGray100 => Color(0XFFD9D9D9);
  Color get blueGray10001 => Color(0XFFD1D1D1);
  Color get blueGray400 => Color(0XFF868686);
  Color get blueGray40001 => Color(0XFF888888);
  Color get blueGray900 => Color(0XFF233332);
  Color get blueGray90001 => Color(0XFF313131);

  // Gray
  Color get gray100 => Color(0XFFF1F5F6);
  Color get gray10001 => Color(0XFFF7F7F7);
  Color get gray10002 => Color(0XFFF2F2F2);
  Color get gray200 => Color(0XFFEEEEEE);
  Color get gray20001 => Color(0XFFEFEFEF);
  Color get gray20002 => Color(0XFFEAEAEA);
  Color get gray300 => Color(0XFFE0EDDC);
  Color get gray400 => Color(0XFFC4C4C4);
  Color get gray40001 => Color(0XFFCACACA);
  Color get gray40002 => Color(0XFFB3B3B3);
  Color get gray40004 => Color(0XFFC6C6C6);
  Color get gray50 => Color(0XFFF9F9F9);
  Color get gray600 => Color(0XFF7A7A7A);
  Color get gray60001 => Color(0XFF6E6E6E);   
  Color get gray700 => Color(0XFF666666);

  // Green
  Color get green600 => Color(0XFF34A853);
  Color get greenA700 => Color(0XFF00B86C);            

  // Indigo
  Color get indigoA200 => Color(0XFF5E7BF9);

  // LightBlue
  Color get lightBlue800 => Color(0XFF0086C0);

  // Lime
  Color get limeA100 => Color(0XFFF3F58A);

  // Orange
  Color get orange400 => Color(0XFFFFA51B);

  // Red
  Color get red400 => Color(0XFFEA5756);
  Color get red500 => Color(0XFFEF4040);
  Color get redA700 => Color(0XFFCA0000);

  // White
  Color get whiteA700 => Color(0XFFFDFDFD);

  // Yellow
  Color get yellow800 => Color(0XFFF79E1B);
  Color get yellowA200 => Color(0XFFE3DA00);
  Color get yellowA700 => Color(0XFFFFE248);
}

PrimaryColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();
