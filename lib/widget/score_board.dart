import 'package:football_ui/mock/data.dart'; // Importing mock data
import 'package:football_ui/styles/text_style.dart'; // Importing text styles
import 'package:flutter/material.dart';

// ScoreBoard widget represents a UI component displaying player score and position
class ScoreBoard extends StatelessWidget {
  const ScoreBoard({super.key}); // Constructor for the ScoreBoard widget

  @override
  Widget build(BuildContext context) {
    const gap = SizedBox(height: 18); // Constant for vertical gap

    // Column widget to arrange child widgets vertically
    return Column(
      children: [
        // Row widget to arrange child widgets horizontally with spaceEvenly distribution
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Center(
              child: Column(
                children: [
                  Text(
                    '${PlayerData.score}', // Displaying player's score from mock data
                    style: AppTextStyle.headingText1.copyWith(
                        fontWeight: FontWeight.bold), // Applying text style
                  ),
                  const Text(
                    PlayerData
                        .position, // Displaying player's position from mock data
                    style: AppTextStyle.bodyText, // Applying text style
                  )
                ],
              ),
            ),
            const CircleAvatar(
              radius: 36,
              child: FlutterLogo(), // Placeholder for player's avatar
            ),
            const SizedBox.shrink(), // Empty SizedBox for spacing
            const SizedBox.shrink(), // Empty SizedBox for spacing
          ],
        ),
        gap, // Adding vertical gap
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 36),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // Using a loop to display prize images based on conditions
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
