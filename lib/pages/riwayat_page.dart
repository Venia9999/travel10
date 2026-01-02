import 'package:flutter/material.dart';
import '../controllers/viewed_controller.dart';
import '../models/destinasi.dart';
import 'detail_destinasi_page.dart';

class RiwayatPage extends StatelessWidget {
  const RiwayatPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Destinasi> data = ViewedController.getAll();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Destinasi Terakhir Dilihat"),
        backgroundColor: const Color(0xFF1E3A8A),
      ),
      backgroundColor: const Color(0xFFF5F7FA),
      body: data.isEmpty
          ? const Center(
              child: Text(
                "Belum ada destinasi yang dilihat",
                style: TextStyle(color: Colors.grey),
              ),
            )
          : ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: data.length,
              itemBuilder: (context, index) {
                final d = data[index];
                return Container(
                  margin: const EdgeInsets.only(bottom: 12),
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
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        d.imagePath,
                        width: 60,
                        fit: BoxFit.cover,
                      ),
                    ),
                    title: Text(d.nama),
                    subtitle: Text(d.lokasi),
                    trailing: const Icon(Icons.chevron_right),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) =>
                              DetailDestinasiPage(destinasi: d),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
    );
  }
}
