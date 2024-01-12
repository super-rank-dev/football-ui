import 'package:flutter/material.dart';

/// A custom widget to display a skill progress bar.
class SkillProgressBar extends StatelessWidget {
  /// The skill rating value (out of 100).
  final int skillRating;

  /// Constructor to initialize the SkillProgressBar with a skill rating.
  SkillProgressBar(this.skillRating);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(8, 0, 24, 0),
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        color: const Color(0xFFB5B5B5), // RGB(181, 181, 181)
        borderRadius: BorderRadius.circular(50),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50), // Set border radius to 50%
        child: LinearProgressIndicator(
          value: skillRating / 100, // Calculate progress value
          backgroundColor: Colors.transparent,
          valueColor: const AlwaysStoppedAnimation<Color>(
            Color(0xFF1A5D4B), // RGB(26, 93, 75)
          ),
        ),
      ),
    );
  }
}
