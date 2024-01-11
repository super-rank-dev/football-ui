import 'package:football_ui/styles/colors.dart';
import 'package:flutter/material.dart';

class AppTextStyle {
  static const TextStyle defaultText = TextStyle(
    color: AppColors.textColor,
    fontStyle: FontStyle.italic,
  );

  static const TextStyle headingText1 = TextStyle(
    color: AppColors.textColor,
    fontStyle: FontStyle.italic,
    fontSize: 48,
  );
  static const TextStyle headingText2 = TextStyle(
    color: AppColors.textColor,
    fontStyle: FontStyle.italic,
    fontSize: 36,
  );

  static const TextStyle headingText3 = TextStyle(
    color: AppColors.textColor,
    fontStyle: FontStyle.italic,
    fontWeight: FontWeight.w600,
    fontSize: 24,
  );

  static const TextStyle headingText4 = TextStyle(
    color: AppColors.textColor,
    fontStyle: FontStyle.italic,
    fontSize: 18,
  );

  static const TextStyle bodyText = TextStyle(
    color: AppColors.textColor,
    fontSize: 16,
  );

  static const TextStyle bodyText2 = TextStyle(
    color: AppColors.textColor,
    fontStyle: FontStyle.italic,
    fontSize: 14,
  );

  static const TextStyle bodyText3 = TextStyle(
    color: AppColors.greyColor,
    fontStyle: FontStyle.italic,
    fontSize: 12,
  );
}
