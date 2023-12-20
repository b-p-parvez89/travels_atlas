import 'package:flutter/material.dart';
import 'package:travels_atlase/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillAmber => BoxDecoration(
        color: appTheme.amber50001,
      );
  static BoxDecoration get fillBlack => BoxDecoration(
        color: appTheme.black90066.withOpacity(0.2),
      );
  static BoxDecoration get fillBlack90066 => BoxDecoration(
        color: appTheme.black90066.withOpacity(0.3),
      );
  static BoxDecoration get fillBlack900661 => BoxDecoration(
        color: appTheme.black90066,
      );
  static BoxDecoration get fillBlueGray => BoxDecoration(
        color: appTheme.blueGray100,
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray100,
      );
  static BoxDecoration get fillOnPrimaryContainer => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary,
      );
  static BoxDecoration get fillWhiteA => BoxDecoration(
        color: appTheme.whiteA700,
      );

  // Gradient decorations
  static BoxDecoration get gradientBlackToBlueGray => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.46, 1.2),
          end: Alignment(0.46, -0.32),
          colors: [
            appTheme.black900.withOpacity(0.85),
            appTheme.blueGray100.withOpacity(0),
          ],
        ),
      );
  static BoxDecoration get gradientPrimaryToBlueGray => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.33, -0.22),
          end: Alignment(0.5, 0.86),
          colors: [
            theme.colorScheme.primary,
            appTheme.blueGray100.withOpacity(0),
          ],
        ),
      );
  static BoxDecoration get gradientPrimaryToBluegray100 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1.46),
          colors: [
            theme.colorScheme.primary,
            appTheme.blueGray100.withOpacity(0),
          ],
        ),
      );
  static BoxDecoration get gradientPrimaryToBluegray1001 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, -0.06),
          end: Alignment(0.5, 1.46),
          colors: [
            theme.colorScheme.primary,
            appTheme.blueGray100.withOpacity(0),
          ],
        ),
      );
  static BoxDecoration get gradientPrimaryToBluegray1002 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, -0.06),
          end: Alignment(0.5, 1.15),
          colors: [
            theme.colorScheme.primary,
            appTheme.blueGray100.withOpacity(0),
          ],
        ),
      );
  static BoxDecoration get gradientPrimaryToDeepOrangeCc => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, -0.11),
          end: Alignment(0.5, 1),
          colors: [
            theme.colorScheme.primary,
            appTheme.deepOrange200Cc.withOpacity(0.59),
          ],
        ),
      );
  static BoxDecoration get gradientPrimaryToDeeporange200cc => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, -0.11),
          end: Alignment(0.5, 1),
          colors: [
            theme.colorScheme.primary.withOpacity(0.8),
            appTheme.deepOrange200Cc,
          ],
        ),
      );
  static BoxDecoration get gradientPrimaryToPrimary => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, -0.07),
          end: Alignment(0.5, 1),
          colors: [
            theme.colorScheme.primary,
            theme.colorScheme.primary.withOpacity(0),
          ],
        ),
      );
  static BoxDecoration get gradientPrimaryToWhiteA => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.47, 0),
          end: Alignment(0.5, 1),
          colors: [
            theme.colorScheme.primary,
            appTheme.whiteA700.withOpacity(0),
          ],
        ),
      );

  // Outline decorations
  static BoxDecoration get outlineBlueGray => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        border: Border.all(
          color: appTheme.blueGray10001,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineDeepOrange => BoxDecoration(
        border: Border.all(
          color: appTheme.deepOrange200,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineErrorContainer => BoxDecoration(
        border: Border.all(
          color: theme.colorScheme.errorContainer,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGray => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer,
        border: Border.all(
          color: appTheme.gray30001,
          width: 2.h,
        ),
      );
  static BoxDecoration get outlineOnError => BoxDecoration(
        border: Border.all(
          color: theme.colorScheme.onError,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlinePrimary => BoxDecoration(
        color: appTheme.blueGray100.withOpacity(0.8),
        border: Border.all(
          color: theme.colorScheme.primary,
          width: 3.h,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.2),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              0,
            ),
          ),
        ],
      );
  static BoxDecoration get outlinePrimary1 => BoxDecoration(
        color: appTheme.blueGray100,
        border: Border.all(
          color: theme.colorScheme.primary,
          width: 2.h,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.25),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              0,
            ),
          ),
        ],
      );
  static BoxDecoration get outlinePrimary2 => BoxDecoration(
        color: appTheme.whiteA700,
        border: Border.all(
          color: theme.colorScheme.primary,
          width: 1.h,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.12),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              0,
            ),
          ),
        ],
      );
  static BoxDecoration get outlinePrimary3 => BoxDecoration(
        border: Border.all(
          color: theme.colorScheme.primary,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlinePrimary4 => BoxDecoration(
        border: Border.all(
          color: theme.colorScheme.primary.withOpacity(0.4),
          width: 1.h,
        ),
      );
  static BoxDecoration get outlinePrimary5 => BoxDecoration(
        color: appTheme.whiteA700.withOpacity(0.49),
        border: Border.all(
          color: theme.colorScheme.primary.withOpacity(0.49),
          width: 1.h,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.12),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              0,
            ),
          ),
        ],
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder19 => BorderRadius.circular(
        19.h,
      );

  // Custom borders
  static BorderRadius get customBorderTL8 => BorderRadius.vertical(
        top: Radius.circular(8.h),
      );

  // Rounded borders
  static BorderRadius get roundedBorder1 => BorderRadius.circular(
        1.h,
      );
  static BorderRadius get roundedBorder12 => BorderRadius.circular(
        12.h,
      );
  static BorderRadius get roundedBorder16 => BorderRadius.circular(
        16.h,
      );
  static BorderRadius get roundedBorder4 => BorderRadius.circular(
        4.h,
      );
  static BorderRadius get roundedBorder40 => BorderRadius.circular(
        40.h,
      );
  static BorderRadius get roundedBorder8 => BorderRadius.circular(
        8.h,
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
