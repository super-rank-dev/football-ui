import 'package:football_ui/styles/colors.dart';
import 'package:football_ui/styles/text_style.dart';
import 'package:flutter/material.dart';

/// A Flutter widget representing a Leaderboard.
class LeaderBoard extends StatelessWidget {
  const LeaderBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 4,
      itemBuilder: (context, _) => const _LeaderBoardItem(),
    );
  }
}

/// A Flutter widget representing an item in the Leaderboard.
class _LeaderBoardItem extends StatelessWidget {
  const _LeaderBoardItem();

  @override
  Widget build(BuildContext context) {
    // Extracting the white color from the AppColors class
    const white = AppColors.textColor;

    return const Card(
      color: Color(0xFF0F3D30),
      child: ListTile(
        leading: Text(
          '45.',
          style: AppTextStyle.bodyText2,
        ),
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://images.spiceworks.com/wp-content/uploads/2021/12/08134343/3D-illustration-of-a-computer-network.jpg'),
            ),
            SizedBox(width: 8),
            Column(
              children: [
                Text(
                  'Peter Bass',
                  style: AppTextStyle.bodyText,
                ),
                Row(
                  children: [
                    Text(
                      '12,400',
                      style: AppTextStyle.bodyText,
                    ),
                    SizedBox(width: 4),
                    Icon(
                      Icons.access_alarm,
                      color: white,
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
