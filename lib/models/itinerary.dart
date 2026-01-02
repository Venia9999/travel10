import 'destinasi.dart';

class Itinerary {
  final List<Destinasi> _destinasiList = [];

  List<Destinasi> get destinasi => List.unmodifiable(_destinasiList);

  void tambahDestinasi(Destinasi d) {
    _destinasiList.add(d);
  }

  void hapusDestinasi(Destinasi d) {
    _destinasiList.remove(d);
  }

  double get totalBiaya {
    return _destinasiList.fold(0, (sum, d) => sum + d.harga);
  }
}
