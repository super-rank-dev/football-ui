// Importing necessary packages and files
import 'package:football_ui/styles/colors.dart';
import 'package:flutter/material.dart';

// A class to define various text styles used in the app
class AppTextStyle {
  // Default text style with italic font and default color
  static const TextStyle defaultText = TextStyle(
    color: AppColors.textColor,
    fontStyle: FontStyle.italic,
  );

  // Heading text style 1 with italic font, default color, and font size 48
  static const TextStyle headingText1 = TextStyle(
    color: AppColors.textColor,
    fontStyle: FontStyle.italic,
    fontSize: 48,
  );

  // Heading text style 2 with italic font, default color, and font size 36
  static const TextStyle headingText2 = TextStyle(
    color: AppColors.textColor,
    fontStyle: FontStyle.italic,
    fontSize: 36,
  );

  // Heading text style 3 with italic font, default color, bold weight, and font size 24
  static const TextStyle headingText3 = TextStyle(
    color: AppColors.textColor,
    fontStyle: FontStyle.italic,
    fontWeight: FontWeight.w600,
    fontSize: 24,
  );

  // Heading text style 4 with italic font, default color, and font size 18
  static const TextStyle headingText4 = TextStyle(
    color: AppColors.textColor,
    fontStyle: FontStyle.italic,
    fontSize: 18,
  );

  // Body text style with default color and font size 16
  static const TextStyle bodyText = TextStyle(
    color: AppColors.textColor,
    fontSize: 16,
  );

  // Body text style 2 with italic font, default color, and font size 14
  static const TextStyle bodyText2 = TextStyle(
    color: AppColors.textColor,
    fontStyle: FontStyle.italic,
    fontSize: 14,
  );

  // Body text style 3 with italic font, grey color, and font size 12
  static const TextStyle bodyText3 = TextStyle(
    color: AppColors.greyColor,
    fontStyle: FontStyle.italic,
    fontSize: 12,
  );
}
