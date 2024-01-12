import 'package:football_ui/widget/bottom_nav_bar.dart';
import 'package:football_ui/widget/custom_app_bar.dart';
import 'package:football_ui/widget/level_indicator.dart';
import 'package:football_ui/widget/score_board.dart';
import 'package:football_ui/widget/skill_ratings.dart';
import 'package:flutter/material.dart';

// Main entry point of the application
void main() {
  runApp(const MyApp());
}

// The root widget of the application
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Football UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // Uncomment the following line to customize the color scheme
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.black38),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

// Home page widget
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Constant gap widget for spacing
    const gap = SizedBox(height: 18);

    return Scaffold(
      // Body with a decorated box having a gradient background
      body: DecoratedBox(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.black, Color(0xFF266455)],
            end: Alignment.bottomLeft,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              // Custom app bar widget
              const SizedBox(height: 48),
              const CustomAppBar(),
              gap,

              // Score board widget
              const ScoreBoard(),
              gap,

              // Level indicator widget
              const LevelIndicator(),
              const SizedBox(height: 28),

              // Skill ratings widget
              SkillRatings(gap: gap),
            ],
          ),
        ),
      ),
      // Bottom navigation bar widget
      bottomNavigationBar: const AppBottomNavBar(),
    );
  }
}
