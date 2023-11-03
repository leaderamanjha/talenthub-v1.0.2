import 'package:talenthub/core/app_export.dart';
import 'package:flutter/material.dart';

/// A class that offers pre-defined button styles for customizing button appearance.
class CustomButtonStyles {
  // Filled button style
  static ButtonStyle get fillBlueGray => ElevatedButton.styleFrom(
        backgroundColor: appTheme.blueGray100,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.h),
        ),
      );
  static ButtonStyle get fillBlueGrayTL8 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.blueGray400,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.h),
        ),
      );
  static ButtonStyle get fillGray => ElevatedButton.styleFrom(
        backgroundColor: appTheme.gray600,
      );
  static ButtonStyle get fillGreenA => ElevatedButton.styleFrom(
        backgroundColor: appTheme.greenA700,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.h),
        ),
      );
  static ButtonStyle get fillIndigoA => ElevatedButton.styleFrom(
        backgroundColor: appTheme.indigoA200,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(9.h),
        ),
      );
  static ButtonStyle get fillPrimary => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.h),
        ),
      );
  static ButtonStyle get fillPrimaryTL16 => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.h),
        ),
      );

  // Gradient button style
  static BoxDecoration get gradientGreenAToYellowADecoration => BoxDecoration(
        borderRadius: BorderRadius.circular(11.h),
        gradient: LinearGradient(
          begin: Alignment(-0.50, 0),
          end: Alignment(0.50, 0),
          colors: [
            appTheme.greenA700,
            appTheme.yellowA700,
          ],
        ),
      );
  static BoxDecoration get gradientWhiteToYellow => BoxDecoration(
        borderRadius: BorderRadius.circular(11.h),
        gradient: LinearGradient(
          begin: Alignment(0.89, 0),
          end: Alignment(-0.99, 1),
          colors: [
            appTheme.yellowA700,
            appTheme.whiteA700,
          ],
        ),
      );
  static BoxDecoration get gradientBlueToWhite => BoxDecoration(
        borderRadius: BorderRadius.circular(11.h),
        gradient: LinearGradient(
          begin: Alignment(0.99, 0),
          end: Alignment(-0.98, 1),
          colors: [
            appTheme.lightBlue800,
            appTheme.blue50,
          ],
        ),
      );
  static BoxDecoration get gradientTL10Decoration => BoxDecoration(
        borderRadius: BorderRadius.circular(10.h),
        gradient: LinearGradient(
          begin: Alignment(-0.04, 0),
          end: Alignment(0.97, 0),
          colors: [
            appTheme.gray50,
            appTheme.amberA200,
          ],
        ),
      );
  static BoxDecoration get gradientYellowAToBlackDecoration => BoxDecoration(
        borderRadius: BorderRadius.circular(11.h),
        gradient: LinearGradient(
          begin: Alignment(0.85, 0),
          end: Alignment(-0.56, 1),
          colors: [
            appTheme.yellowA700.withOpacity(0.8),
            appTheme.black900.withOpacity(0.8),
          ],
        ),
      );
  static BoxDecoration get gradientYellowAToBlackTL5Decoration => BoxDecoration(
        borderRadius: BorderRadius.circular(5.h),
        gradient: LinearGradient(
          begin: Alignment(0.85, 0),
          end: Alignment(-0.56, 1),
          colors: [
            appTheme.yellowA700.withOpacity(0.8),
            appTheme.black900.withOpacity(0.8),
          ],
        ),
      );

  // Outline button style
  static ButtonStyle get outlineBlueGrayTL8 => OutlinedButton.styleFrom(
        backgroundColor: Colors.transparent,
        side: BorderSide(
          color: appTheme.blueGray400,
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.h),
        ),
      );
  // text button style
  static ButtonStyle get none => ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        elevation: MaterialStateProperty.all<double>(0),
      );
}
