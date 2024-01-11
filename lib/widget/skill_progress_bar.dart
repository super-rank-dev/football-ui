import 'package:flutter/material.dart';

class SkillProgressBar extends StatelessWidget {
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
          child: const LinearProgressIndicator(
            value: 0.75, // 75%
            backgroundColor: Colors.transparent,
            valueColor: AlwaysStoppedAnimation<Color>(
              Color(0xFF1A5D4B), // RGB(26, 93, 75)
            ),
          ),
        ));
  }
}
