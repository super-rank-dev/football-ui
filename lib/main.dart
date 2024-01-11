import 'package:football_ui/widget/bottom_nav_bar.dart';
import 'package:football_ui/widget/custom_app_bar.dart';
import 'package:football_ui/widget/level_indicator.dart';
import 'package:football_ui/widget/score_board.dart';
import 'package:football_ui/widget/skill_ratings.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Football UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.black38),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    const gap = SizedBox(height: 18);

    return Scaffold(
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
              const SizedBox(height: 48),
              const CustomAppBar(),
              gap,
              const ScoreBoard(),
              gap,
              const LevelIndicator(),
              const SizedBox(height: 28),
              SkillRatings(gap: gap)
            ],
          ),
        ),
      ),
      bottomNavigationBar: const AppBottomNavBar(),
    );
  }
}
