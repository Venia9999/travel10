import 'package:flutter/material.dart';
import '../models/user.dart';
import 'login_page.dart';
import 'favorite_page.dart';
import 'riwayat_page.dart';
import 'settings_page.dart';

class ProfilePage extends StatelessWidget {
  final User user;

  const ProfilePage({
    super.key,
    required this.user,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F7FD),
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Akun Saya",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color(0xFF1E3A8A),
      ),
      body: Column(
        children: [
          const SizedBox(height: 30),

          /// ===== AVATAR =====
          Container(
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: const Color(0xFF1E3A8A),
                width: 2,
              ),
            ),
            child: const CircleAvatar(
              radius: 45,
              backgroundColor: Color(0xFF1E3A8A),
              child: Icon(
                Icons.person,
                size: 50,
                color: Colors.white,
              ),
            ),
          ),

          const SizedBox(height: 14),

          /// ===== NAMA =====
          Text(
            user.name,
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w700,
            ),
          ),

          const SizedBox(height: 4),

          /// ===== EMAIL =====
          Text(
            user.email,
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 14,
            ),
          ),

          const SizedBox(height: 30),

          /// ===== MENU =====
          _menuItem(
            icon: Icons.favorite_rounded,
            title: "Favorit Saya",
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const FavoritePage(),
                ),
              );
            },
          ),
          _menuItem(
            icon: Icons.history_rounded,
            title: "Destinasi Terakhir Dilihat",
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const RiwayatPage(),
                ),
              );
            },
          ),
          _menuItem(
            icon: Icons.settings_rounded,
            title: "Pengaturan",
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const SettingsPage(),
                ),
              );
            },
          ),

          const Spacer(),

          /// ===== LOGOUT =====
          Padding(
            padding: const EdgeInsets.all(20),
            child: SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton.icon(
                icon: const Icon(Icons.logout),
                label: const Text(
                  "Logout",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.redAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                ),
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (_) => LoginPage(),
                    ),
                    (route) => false,
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _menuItem({
    required IconData icon,
    required String title,
    VoidCallback? onTap,
  }) {
    return ListTile(
      leading: Icon(icon, color: const Color(0xFF1E3A8A)),
      title: Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.w500),
      ),
      trailing: const Icon(Icons.chevron_right),
      onTap: onTap,
    );
  }
}
