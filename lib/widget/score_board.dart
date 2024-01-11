import 'package:football_ui/mock/data.dart';
import 'package:football_ui/styles/colors.dart';
import 'package:football_ui/styles/text_style.dart';
import 'package:flutter/material.dart';

class ScoreBoard extends StatelessWidget {
  const ScoreBoard({super.key});

  @override
  Widget build(BuildContext context) {
    const gap = SizedBox(height: 18);
    const textColor = AppColors.textColor;

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Center(
              child: Column(
                children: [
                  Text(
                    '${PlayerData.score}',
                    style: AppTextStyle.headingText1
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    PlayerData.position,
                    style: AppTextStyle.bodyText,
                  )
                ],
              ),
            ),
            const CircleAvatar(
              radius: 36,
              child: FlutterLogo(),
            ),
            const SizedBox.shrink(),
            const SizedBox.shrink(),
          ],
        ),
        gap,
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 36),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              for (final i in [1, 2, 3])
                if (i % 2 == 0)
                  Image.asset('assets/prize.png',
                      height: 90, width: 90, fit: BoxFit.cover)
                else
                  Image.asset('assets/prize.png',
                      height: 60, width: 60, fit: BoxFit.cover)
            ],
          ),
        ),
      ],
    );
  }
}
