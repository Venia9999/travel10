import 'package:flutter/material.dart';

import '../models/destinasi.dart';
import '../pages/category_page.dart';
import '../pages/detail_destinasi_page.dart';

class KategoriPreview extends StatelessWidget {
  final String title;
  final List<Destinasi> data;

  const KategoriPreview({
    super.key,
    required this.title,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    if (data.isEmpty) return const SizedBox();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Spacer(),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => CategoryPage(
                        kategori: title,
                        data: data,
                      ),
                    ),
                  );
                },
                child: Text(
                  "Lihat semua",
                  style: TextStyle(
                    color: Colors.blue.shade700,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 12),
        SizedBox(
          height: 150,
          child: ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            scrollDirection: Axis.horizontal,
            itemCount: data.length > 3 ? 3 : data.length,
            separatorBuilder: (_, __) => const SizedBox(width: 14),
            itemBuilder: (context, index) {
              final d = data[index];
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) =>
                          DetailDestinasiPage(destinasi: d),
                    ),
                  );
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(18),
                  child: Image.asset(
                    d.imagePath,
                    width: 140,
                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
          ),
        ),
        const SizedBox(height: 24),
      ],
    );
  }
}
