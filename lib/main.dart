import 'package:flutter/material.dart';
import 'pages/login_page.dart';
import 'controllers/theme_controller.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeMode>(
      valueListenable: ThemeController.themeMode,
      builder: (context, mode, _) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          themeMode: mode,

          /// ☀️ LIGHT MODE
          theme: ThemeData(
            brightness: Brightness.light,
            primaryColor: const Color(0xFF1E3A8A),
            scaffoldBackgroundColor: const Color(0xFFF5F7FA),
            appBarTheme: const AppBarTheme(
              backgroundColor: Color(0xFF1E3A8A),
              foregroundColor: Colors.white,
            ),
          ),

          /// 🌙 DARK MODE
          darkTheme: ThemeData(
            brightness: Brightness.dark,
            primaryColor: const Color(0xFF3B82F6),
            scaffoldBackgroundColor: const Color(0xFF0F172A),
            appBarTheme: const AppBarTheme(
              backgroundColor: Color(0xFF020617),
              foregroundColor: Colors.white,
            ),
          ),

          home: LoginPage(), // ✅ TETAP AMAN
        );
      },
    );
  }
}
