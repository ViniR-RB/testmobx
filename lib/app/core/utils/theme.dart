import 'package:flutter/material.dart';
import 'package:testmobx/app/core/utils/colors.dart';

sealed class AppTheme {
  static ThemeData theme = ThemeData(
    useMaterial3: true,
    iconTheme: const IconThemeData(color: Colors.black),
    textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w400))),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          minimumSize: const Size.fromHeight(48),
          foregroundColor: Colors.white,
          shadowColor: Colors.black,
          textStyle: const TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.w500),
          backgroundColor: AppColors.green),
    ),
    inputDecorationTheme: const InputDecorationTheme(
        filled: true, fillColor: Colors.white, border: OutlineInputBorder()),
  );
}
