import 'package:flutter/material.dart';

sealed class AppColors {
  static const greyDark = Color(0xFF1D4D61);
  static const greenSea = Color(0xFF2C948D);
  static const green = Color(0xFF43BC6D);
  static LinearGradient scaffoldBackground = const LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [greyDark, greenSea],
    stops: [0.0, 1.0],
  );
}
