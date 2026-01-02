import 'destinasi.dart';

class WisataAlam extends Destinasi {
  WisataAlam({
    required super.id,
    required super.nama,
    required super.lokasi,
    required super.imagePath,
    required super.rating,
    required super.harga,
    required super.deskripsi,
  });

  @override
  String getKategori() => "Wisata Alam";
}