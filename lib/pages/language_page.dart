import 'package:flutter/material.dart';

class LanguagePage extends StatelessWidget {
  const LanguagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bahasa"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          _LanguageItem(
            title: "Indonesia",
            selected: true,
          ),
          _LanguageItem(
            title: "English",
          ),
          _LanguageItem(
            title: "Japanese",
          ),
        ],
      ),
    );
  }
}

class _LanguageItem extends StatelessWidget {
  final String title;
  final bool selected;

  const _LanguageItem({
    required this.title,
    this.selected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: ListTile(
        title: Text(
          title,
          style: TextStyle(
            fontWeight: selected ? FontWeight.bold : FontWeight.normal,
          ),
        ),
        trailing: selected
            ? const Icon(Icons.check_circle, color: Color(0xFF1E3A8A))
            : null,
      ),
    );
  }
}