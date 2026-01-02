import 'destinasi.dart';

class WisataKuliner extends Destinasi {
  WisataKuliner({
    required super.nama,
    required super.lokasi,
    required super.imagePath,
    required super.rating,
    required super.harga,
    required super.deskripsi, required super.id,
  });

  @override
  String getKategori() => "Wisata Kuliner";
}
