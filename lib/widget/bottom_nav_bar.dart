import 'package:football_ui/styles/colors.dart';
import 'package:flutter/material.dart';

/// A custom bottom navigation bar widget for the football app.
class AppBottomNavBar extends StatelessWidget {
  /// Constructor for the [AppBottomNavBar] widget.
  const AppBottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Define the text color using the AppColors class.
    const textColor = AppColors.textColor;

    // Return a BottomNavigationBar widget with specified customization.
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: textColor,
      unselectedItemColor: textColor,
      backgroundColor: Colors.greenAccent,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.newspaper_rounded,
          ),
          label: 'News',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.transit_enterexit,
          ),
          label: 'Training',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.play_circle,
          ),
          label: 'Play',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.filter_tilt_shift_rounded,
          ),
          label: 'Clubs',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.person,
          ),
          label: 'Profile',
        ),
      ],
    );
  }
}
