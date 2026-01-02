import 'package:flutter/material.dart';
import '../../models/destinasi.dart';
import '../../controllers/itinerary_controller.dart';
import '../../controllers/favorite_controller.dart';
import '../../controllers/viewed_controller.dart'; // ✅ TAMBAH INI

class DetailDestinasiPage extends StatefulWidget {
  final Destinasi destinasi;

  const DetailDestinasiPage({
    super.key,
    required this.destinasi,
  });

  @override
  State<DetailDestinasiPage> createState() => _DetailDestinasiPageState();
}

class _DetailDestinasiPageState extends State<DetailDestinasiPage> {

  @override
  void initState() {
    super.initState();
    ViewedController.add(widget.destinasi); // ✅ CATAT RIWAYAT
  }

  @override
  Widget build(BuildContext context) {
    final bool isFavorite =
        FavoriteController.isFavorite(widget.destinasi);

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.destinasi.nama),
        backgroundColor: const Color(0xFF1E3A8A),
        actions: [
          IconButton(
            icon: Icon(
              isFavorite
                  ? Icons.favorite
                  : Icons.favorite_border,
              color: Colors.red,
            ),
            onPressed: () {
              setState(() {
                FavoriteController.toggle(widget.destinasi);
              });

              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    isFavorite
                        ? "Dihapus dari favorit"
                        : "Ditambahkan ke favorit",
                  ),
                  duration: const Duration(seconds: 1),
                ),
              );
            },
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              widget.destinasi.imagePath,
              width: double.infinity,
              height: 220,
              fit: BoxFit.cover,
            ),

            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.destinasi.nama,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                    ),
                  ),

                  const SizedBox(height: 6),

                  Text(
                    widget.destinasi.lokasi,
                    style: const TextStyle(color: Colors.grey),
                  ),

                  const SizedBox(height: 16),

                  Row(
                    children: [
                      const Icon(
                        Icons.star,
                        color: Colors.amber,
                        size: 18,
                      ),
                      const SizedBox(width: 4),
                      Text(widget.destinasi.rating.toString()),
                      const SizedBox(width: 16),
                      Text(
                        widget.destinasi.getKategori(),
                        style: const TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),

                  const SizedBox(height: 24),

                  const Text(
                    "Deskripsi",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    widget.destinasi.deskripsi,
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      color: Colors.grey.shade800,
                      height: 1.5,
                    ),
                  ),

                  const SizedBox(height: 32),

                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color(0xFF1E3A8A),
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(14),
                        ),
                      ),
                      onPressed: () {
                        ItineraryController.tambah(
                            widget.destinasi);

                        ScaffoldMessenger.of(context)
                            .showSnackBar(
                          const SnackBar(
                            content: Text(
                                "Ditambahkan ke itinerary"),
                          ),
                        );
                      },
                      child: const Text("Tambah ke Itinerary"),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
