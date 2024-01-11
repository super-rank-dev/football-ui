import 'package:football_ui/styles/colors.dart';
import 'package:football_ui/styles/text_style.dart';
import 'package:football_ui/widget/slider_track_shape.dart';
import 'package:flutter/material.dart';

class LevelIndicator extends StatelessWidget {
  const LevelIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    const textColor = AppColors.textColor;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
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
                  RichText(
                    text: TextSpan(
                      text: ' 11,200',
                      style: AppTextStyle.headingText4.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                      children: const [
                        TextSpan(
                          text: ' of 15,000',
                          style: AppTextStyle.bodyText3,
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
          SliderTheme(
            data: SliderThemeData(
              trackShape: CustomTrackShape(),
              thumbShape: SliderComponentShape.noThumb,
            ),
            child: Slider(
              value: 7,
              onChanged: (_) {},
              max: 10,
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
