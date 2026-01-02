import 'package:flutter/material.dart';
import '../controllers/favorite_controller.dart';
import '../controllers/destinasi_controller.dart';
import '../models/destinasi.dart';
import 'detail_destinasi_page.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({super.key});

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  static const Color primaryColor = Color(0xFF1E3A8A);

  /// 🔥 refresh setiap halaman dibuka lagi
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final List<Destinasi> favorites =
        FavoriteController.getFavorites(DestinasiController.getAll());

    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FA),

      /// ================= APP BAR =================
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.white,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF1E3A8A), Color(0xFF3B82F6)],
            ),
          ),
        ),
        title: const Text(
          "Favorit ❤️",
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),

      /// ================= BODY =================
      body: favorites.isEmpty
          ? const Center(
              child: Text(
                "Belum ada destinasi favorit ❤️",
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
            )
          : ListView.builder(
              padding: const EdgeInsets.all(20),
              itemCount: favorites.length,
              itemBuilder: (context, index) {
                final d = favorites[index];

                return GestureDetector(
                  onTap: () async {
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) =>
                            DetailDestinasiPage(destinasi: d),
                      ),
                    );

                    /// 🔥 refresh setelah kembali
                    setState(() {});
                  },
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(18),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.05),
                          blurRadius: 10,
                          offset: const Offset(0, 4),
                        )
                      ],
                    ),
                    child: Row(
                      children: [
                        /// IMAGE
                        ClipRRect(
                          borderRadius: const BorderRadius.horizontal(
                              left: Radius.circular(18)),
                          child: Image.asset(
                            d.imagePath,
                            width: 110,
                            height: 110,
                            fit: BoxFit.cover,
                          ),
                        ),

                        /// INFO
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(14),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  d.nama,
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                const SizedBox(height: 6),
                                Text(
                                  d.lokasi,
                                  style: const TextStyle(
                                    color: Colors.grey,
                                    fontSize: 13,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Row(
                                  children: const [
                                    Icon(Icons.favorite,
                                        size: 16, color: Colors.red),
                                    SizedBox(width: 6),
                                    Text(
                                      "Favorit",
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.red,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),

                        const Padding(
                          padding: EdgeInsets.only(right: 14),
                          child: Icon(
                            Icons.arrow_forward_ios,
                            size: 16,
                            color: primaryColor,
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
    );
  }
}
