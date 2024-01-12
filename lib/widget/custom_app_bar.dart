// Import necessary packages and files
import 'package:football_ui/styles/colors.dart';
import 'package:football_ui/styles/text_style.dart';
import 'package:football_ui/mock/data.dart';
import 'package:flutter/material.dart';

// CustomAppBar class extends StatelessWidget
class CustomAppBar extends StatelessWidget {
  // Constructor for the CustomAppBar widget
  const CustomAppBar({
    Key? key, // Optional key parameter for Flutter widgets
  }) : super(key: key); // Call the constructor of the super class (StatelessWidget)

  // Build method to define the appearance of the widget
  @override
  Widget build(BuildContext context) {
    // Define a constant color for text
    const Color textColor = AppColors.textColor;

    // Return a Padding widget with specified padding and child elements
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Row(
        children: [
          // Display player name using Text widget with a specific style
          Text(
            PlayerData.name,
            style: AppTextStyle.headingText3,
          ),
          Spacer(), // Spacer widget to push the following icon to the end of the row
          // Display a settings icon using Icon widget with a specific color
          Icon(
            Icons.settings,
            color: textColor,
          ),
        ],
      ),
    );
  }
}
