abstract class Destinasi {
  final String id; // ⬅️ penting untuk identitas unik
  final String nama;
  final String lokasi;
  final String imagePath;
  final double rating;
  final int harga;
  final String deskripsi;

  bool isFavorite; // ❤️ STATE PER ITEM

  Destinasi({
    required this.id,
    required this.nama,
    required this.lokasi,
    required this.imagePath,
    required this.rating,
    required this.harga,
    required this.deskripsi,
    this.isFavorite = false,
  });

  String getKategori();
}
