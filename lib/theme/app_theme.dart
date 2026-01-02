import 'package:flutter/material.dart';
import '../utils/app_colors.dart';


class AppTheme {
static ThemeData lightTheme = ThemeData(
useMaterial3: true,
fontFamily: 'Poppins',


scaffoldBackgroundColor: AppColors.background,


colorScheme: ColorScheme.fromSeed(
seedColor: AppColors.primary,
primary: AppColors.primary,
secondary: AppColors.secondary,
surface: AppColors.surface,
),


appBarTheme: const AppBarTheme(
backgroundColor: Colors.transparent,
elevation: 0,
centerTitle: false,
titleTextStyle: TextStyle(
fontFamily: 'Poppins',
fontSize: 20,
fontWeight: FontWeight.w600,
color: AppColors.textPrimary,
),
iconTheme: IconThemeData(color: AppColors.textPrimary),
),


elevatedButtonTheme: ElevatedButtonThemeData(
style: ElevatedButton.styleFrom(
backgroundColor: AppColors.primary,
foregroundColor: Colors.white,
textStyle: const TextStyle(
fontFamily: 'Poppins',
fontWeight: FontWeight.w600,
),
shape: RoundedRectangleBorder(
borderRadius: BorderRadius.circular(14),
),
elevation: 0,
),
),


inputDecorationTheme: InputDecorationTheme(
filled: true,
fillColor: Colors.white,
contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
border: OutlineInputBorder(
borderRadius: BorderRadius.circular(14),
borderSide: const BorderSide(color: AppColors.border),
),
enabledBorder: OutlineInputBorder(
borderRadius: BorderRadius.circular(14),
borderSide: const BorderSide(color: AppColors.border),
),
focusedBorder: OutlineInputBorder(
borderRadius: BorderRadius.circular(14),
borderSide: const BorderSide(color: AppColors.primary),
),
labelStyle: const TextStyle(color: AppColors.textSecondary),
),


textTheme: const TextTheme(
headlineLarge: TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
headlineMedium: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
bodyLarge: TextStyle(fontSize: 16),
bodyMedium: TextStyle(fontSize: 14),
),
);
}