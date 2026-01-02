import '../models/itinerary.dart';
import '../models/destinasi.dart';

class ItineraryController {
  static final Itinerary _itinerary = Itinerary();

  static Itinerary get itinerary => _itinerary;

  static void tambah(Destinasi d) {
    _itinerary.tambahDestinasi(d);
  }

  static void hapus(Destinasi d) {
    _itinerary.hapusDestinasi(d);
  }
}
