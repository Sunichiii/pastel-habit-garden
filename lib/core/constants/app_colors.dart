import 'package:flutter/material.dart';

class AppColors {
  static const pastelPink = Color(0xFFFFD1DC);
  static const pastelMint = Color(0xFFC1F2E9);
  static const pastelLavender = Color(0xFFE6E6FA);
  static const pastelPeach = Color(0xFFFFDAB9);
  static const pastelBlue = Color(0xFFAEC6CF);
  static const pastelYellow = Color(0xFFFFFAA0);
  static const pastelGreen = Color(0xFFC1E1C1);

  static const primary = pastelMint;
  static const secondary = pastelLavender;

  static LinearGradient get backgroundGradient => const LinearGradient(
    colors: [pastelMint, pastelLavender],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static LinearGradient get buttonGradient => const LinearGradient(
    colors: [pastelBlue, pastelGreen],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
}