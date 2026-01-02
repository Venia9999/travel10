import 'package:flutter/material.dart';
import '../controllers/theme_controller.dart';
import 'language_page.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = ThemeController.isDark;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Pengaturan"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          /// ===== DARK MODE =====
          _switchItem(
            icon: Icons.dark_mode_rounded,
            title: "Tema Gelap",
            value: isDark,
            onChanged: (v) {
              ThemeController.toggle(v);
            },
          ),

          /// ===== BAHASA =====
          _item(
            icon: Icons.language_rounded,
            title: "Bahasa",
            subtitle: "Indonesia",
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const LanguagePage(),
                ),
              );
            },
          ),

          /// ===== ABOUT =====
          _item(
            icon: Icons.info_outline_rounded,
            title: "Tentang Aplikasi",
            subtitle: "Informasi aplikasi",
            onTap: () {
              _showAboutDialog(context);
            },
          ),
        ],
      ),
    );
  }

  /// ===== SWITCH ITEM =====
  Widget _switchItem({
    required IconData icon,
    required String title,
    required bool value,
    required ValueChanged<bool> onChanged,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 14),
      decoration: _box(),
      child: SwitchListTile(
        secondary: Icon(icon, color: const Color(0xFF1E3A8A)),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.w500)),
        value: value,
        onChanged: onChanged,
      ),
    );
  }

  /// ===== ITEM =====
  Widget _item({
    required IconData icon,
    required String title,
    required String subtitle,
    VoidCallback? onTap,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 14),
      decoration: _box(),
      child: ListTile(
        leading: Icon(icon, color: const Color(0xFF1E3A8A)),
        title: Text(title),
        subtitle: Text(subtitle),
        trailing: const Icon(Icons.chevron_right),
        onTap: onTap,
      ),
    );
  }

  /// ===== BOX STYLE =====
  BoxDecoration _box() {
    return BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(14),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.05),
          blurRadius: 10,
          offset: const Offset(0, 4),
        ),
      ],
    );
  }

  /// ===== ABOUT DIALOG =====
  void _showAboutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        title: const Text("Tentang Aplikasi"),
        content: const Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Travel Planner",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text("Versi: 1.0.0"),
            SizedBox(height: 8),
            Text(
              "Aplikasi ini membantu pengguna merencanakan perjalanan wisata, "
              "menyimpan destinasi favorit, dan mengelola itinerary perjalanan.",
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("Tutup"),
          ),
        ],
      ),
    );
  }
}
