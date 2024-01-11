import 'package:football_ui/mock/data.dart';
import 'package:football_ui/styles/colors.dart';
import 'package:football_ui/styles/text_style.dart';
import 'package:football_ui/widget/leader_board.dart';
import 'package:football_ui/widget/skill_progress_bar.dart';
import 'package:football_ui/widget/slider_track_shape.dart';
import 'package:flutter/material.dart';

class SkillRatings extends StatelessWidget {
  SkillRatings({
    super.key,
    required this.gap,
  });

  final SizedBox gap;

  final data = [
    ['Speed', PlayerData.speed, Icons.speed],
    ['Agility', PlayerData.agility, Icons.control_camera],
    ['Dribbling', PlayerData.dribbling, Icons.sports_soccer],
    ['Ball Handling', PlayerData.ballHandling, Icons.directions_run],
    ['Stamina', PlayerData.stamina, Icons.ev_station],
    ['Coordination', PlayerData.coordination, Icons.group_work],
  ];

  @override
  Widget build(BuildContext context) {
    const textColor = AppColors.textColor;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          const Row(
            children: [
              Text(
                'Skill Ratings',
                style: AppTextStyle.headingText3,
              ),
              Spacer(),
              _SeeMore(),
            ],
          ),
          gap,
          GridView.builder(
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: (1 / .4),
            ),
            itemBuilder: (context, index) => Row(
              children: [
                Column(
                  children: [
                    Icon(
                      data[index][2] as IconData,
                      color: textColor,
                    ),
                    Text(
                      data[index][1].toString(),
                      style: AppTextStyle.defaultText,
                    ),
                  ],
                ),
                const SizedBox(width: 4),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      data[index][0].toString(),
                      style: AppTextStyle.defaultText,
                    ),
                    const SizedBox(height: 8),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 3,
                      height: 14,
                      child: SliderTheme(
                        data: SliderThemeData(
                          trackShape: CustomTrackShape(),
                          thumbShape: SliderComponentShape.noThumb,
                        ),
                        child: SkillProgressBar(data[index][1] as int),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            itemCount: data.length,
          ),
          gap,
          const Divider(
            color: Colors.grey,
          ),
          const SizedBox(height: 24),
          const Row(
            children: [
              Text('Leaderboard', style: AppTextStyle.headingText3),
              Spacer(),
              _SeeMore(),
            ],
          ),
          const LeaderBoard(),
        ],
      ),
    );
  }
}

class _SeeMore extends StatelessWidget {
  const _SeeMore();

  @override
  Widget build(BuildContext context) {
    const textColor = AppColors.textColor;

    return const Row(
      children: [
        Text(
          'See More',
          style: AppTextStyle.bodyText3,
        ),
        SizedBox(width: 4),
        Icon(
          Icons.arrow_forward_ios,
          size: 14,
          color: textColor,
        ),
      ],
    );
  }
}
