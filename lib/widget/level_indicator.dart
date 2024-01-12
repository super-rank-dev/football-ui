import 'package:football_ui/mock/data.dart';
import 'package:football_ui/styles/colors.dart';
import 'package:football_ui/styles/text_style.dart';
import 'package:football_ui/widget/slider_track_shape.dart';
import 'package:flutter/material.dart';

/// A widget that displays a level indicator with a slider for tracking player experience.
class LevelIndicator extends StatelessWidget {
  // Constructor with a named parameter 'key'
  const LevelIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Define the text color
    const textColor = AppColors.textColor;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          // Row for displaying the current level and experience information
          Row(
            children: [
              const Text(
                'Level 7',
                style: AppTextStyle.bodyText,
              ),
              const Spacer(),
              Row(
                children: [
                  const Icon(
                    Icons.access_alarm,
                    color: textColor,
                  ),
                  // RichText for displaying formatted text with different styles
                  RichText(
                    text: TextSpan(
                      text: ' ${PlayerData.currentExp}',
                      style: AppTextStyle.headingText4.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                      children: const [
                        TextSpan(
                          text: ' of ${PlayerData.totalExp}',
                          style: AppTextStyle.bodyText3,
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
          // SliderTheme for customizing the appearance of the Slider widget
          SliderTheme(
            data: SliderThemeData(
              trackShape: CustomTrackShape(),
              thumbShape: SliderComponentShape.noThumb,
            ),
            // Slider widget for tracking player experience
            child: Slider(
              value: PlayerData.currentExp.toDouble(),
              onChanged: (_) {},
              max: PlayerData.totalExp.toDouble(),
              min: 0,
              activeColor: Colors.green,
              inactiveColor: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
