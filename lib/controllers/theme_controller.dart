import 'package:flutter/material.dart';

class ThemeController {
  static final ValueNotifier<ThemeMode> themeMode =
      ValueNotifier(ThemeMode.light);

  static bool get isDark =>
      themeMode.value == ThemeMode.dark;

  static void toggle(bool value) {
    themeMode.value =
        value ? ThemeMode.dark : ThemeMode.light;
  }
}
