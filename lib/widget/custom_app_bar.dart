import 'package:football_ui/styles/colors.dart';
import 'package:football_ui/styles/text_style.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const Color textColor = AppColors.textColor;

    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Row(
        children: [
          Text(
            "John Ronaldo",
            style: AppTextStyle.headingText3,
          ),
          Spacer(),
          Icon(
            Icons.settings,
            color: textColor,
          ),
        ],
      ),
    );
  }
}
