import 'package:flutter/widgets.dart';

/// 🔑 Central place for all spacing, padding, and radius values.
/// Instead of hardcoding numbers across widgets, use these constants.
class AppSpacing {
  // Margins & Padding
  static const EdgeInsets screen = EdgeInsets.all(16);
  static const EdgeInsets horizontal = EdgeInsets.symmetric(horizontal: 16);
  static const EdgeInsets vertical = EdgeInsets.symmetric(vertical: 16);
  static const EdgeInsets onBoarding = EdgeInsets.symmetric(
    horizontal: 16,
    vertical: 16,
  );

  // Small gaps
  static const double xs = 4.0;
  static const double sm = 8.0;
  static const double md = 16.0;
  static const double lg = 24.0;
  static const double xl = 32.0;

  // Border Radius
  static const BorderRadius radiusSm = BorderRadius.all(Radius.circular(8));
  static const BorderRadius radiusMd = BorderRadius.all(Radius.circular(16));
  static const BorderRadius radiusLg = BorderRadius.all(Radius.circular(32));

  // Gaps as Widgets (pro trick)
  static const gap4 = SizedBox(height: 4, width: 4);
  static const gap8 = SizedBox(height: 8, width: 8);
  static const gap16 = SizedBox(height: 16, width: 16);
}
