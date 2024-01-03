import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

ThemeData customTheme = ThemeData(
  colorScheme: ColorScheme.light(
    background: Colors.grey.shade300,
    primary: Colors.grey.shade200,
    secondary: Colors.white,
    inversePrimary: Colors.grey.shade900,
    error: Colors.red,
  ),
  textTheme: TextTheme(
    displayLarge: TextStyle(
      fontSize: 30.sp,
      fontWeight: FontWeight.bold,
    ),
    displayMedium: TextStyle(
      fontSize: 25.sp,
      fontWeight: FontWeight.bold,
    ),
    displaySmall: TextStyle(
      fontSize: 20.sp,
      fontWeight: FontWeight.bold,
    ),
    titleLarge: TextStyle(
      fontSize: 25.0.sp,
    ),
    titleMedium: TextStyle(
      fontSize: 20.0.sp,
    ),
    titleSmall: TextStyle(
      fontSize: 15.sp,
    ),
    bodyLarge: TextStyle(
      fontSize: 25.0.sp,
    ),
    bodyMedium: TextStyle(
      fontSize: 20.0.sp,
    ),
    bodySmall: TextStyle(
      fontSize: 15.0.sp,
    ),
  ),
);
