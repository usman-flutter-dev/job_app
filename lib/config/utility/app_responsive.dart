import 'package:flutter/material.dart';

// Utility class to get responsive sizing values relative to the screen size.
class AppResponsive {
  // --- Static access to screen size ---
  static Size size(BuildContext context) {
    return MediaQuery.of(context).size;
  }

  static double screenWidth(BuildContext context) {
    return size(context).width;
  }

  static double screenHeight(BuildContext context) {
    return size(context).height;
  }

  // --- Responsive Sizing Helper Methods ---

  /// Calculates a width-based responsive size.
  ///
  /// Example: responsiveWidth(context, 0.05) gives 5% of the screen width.
  static double wp(BuildContext context, double percentage) {
    if (percentage < 0.0 || percentage > 1.0) {
      throw ArgumentError('Percentage must be between 0.0 and 1.0.');
    }
    return screenWidth(context) * percentage;
  }

  /// Calculates a height-based responsive size.
  ///
  /// Example: responsiveHeight(context, 0.1) gives 10% of the screen height.
  static double hp(BuildContext context, double percentage) {
    if (percentage < 0.0 || percentage > 1.0) {
      throw ArgumentError('Percentage must be between 0.0 and 1.0.');
    }
    return screenHeight(context) * percentage;
  }

  /// Calculates a responsive font size based on screen width.
  ///
  /// This helps text scale relative to the available width.
  /// Example: responsiveFontSize(context, 0.04) gives a font size that's 4% of the screen width.
  static double sp(BuildContext context, double percentage) {
    // We use the shorter dimension (width) for font scaling for better consistency.
    return wp(context, percentage);
  }
}
