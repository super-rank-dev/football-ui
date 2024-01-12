import 'package:flutter/material.dart';

// CustomTrackShape extends RoundedRectSliderTrackShape to create a custom slider track
class CustomTrackShape extends RoundedRectSliderTrackShape {
  @override
  Rect getPreferredRect({
    required RenderBox parentBox,
    Offset offset = Offset.zero,
    required SliderThemeData sliderTheme,
    bool isEnabled = false,
    bool isDiscrete = false,
  }) {
    // Calculate the dimensions and position of the custom slider track

    // Get the height of the slider track from the provided sliderTheme
    final trackHeight = sliderTheme.trackHeight;

    // Calculate the left position of the track
    final trackLeft = offset.dx;

    // Calculate the top position of the track, ensuring it's vertically centered
    final trackTop = offset.dy + (parentBox.size.height - trackHeight!) / 2;

    // Get the width of the parent box, representing the width of the slider
    final trackWidth = parentBox.size.width;

    // Return the Rect representing the custom track's dimensions and position
    return Rect.fromLTWH(trackLeft, trackTop, trackWidth, trackHeight);
  }
}
