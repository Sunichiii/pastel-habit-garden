// Pastel color palette (Pastel rang haru)
import 'dart:ui';
import 'package:flutter/cupertino.dart';

class AppColors {
  static const pastelPink = Color(0xFFFFD1DC);
  static const pastelMint = Color(0xFFC1F2E9);
  static const pastelLavender = Color(0xFFE6E6FA);
  static const pastelPeach = Color(0xFFFFDAB9);
  static const pastelBlue = Color(0xFFAEC6CF);
  static const pastelYellow = Color(0xFFFFFAA0);

  // Gradient for background (Pitho ko gradient)
  static get backgroundGradient => LinearGradient(
    colors: [pastelMint, pastelLavender],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
}