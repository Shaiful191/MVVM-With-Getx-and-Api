import 'package:flutter/material.dart';

class AppColors {
  static BoxDecoration buildGradientBoxDecoration() {
    return const BoxDecoration(
        gradient: LinearGradient(
      colors: [
        Colors.white,
        Colors.green,
      ],
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
      stops: [0.0, 1.0],
      tileMode: TileMode.clamp,
    ));
  }
}
