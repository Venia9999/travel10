import '../models/destinasi.dart';

class ViewedController {
  static final List<Destinasi> _viewed = [];

  static List<Destinasi> getAll() => List.unmodifiable(_viewed);

  static void add(Destinasi d) {
    _viewed.removeWhere((e) => e.id == d.id);
    _viewed.insert(0, d);

    if (_viewed.length > 10) {
      _viewed.removeLast();
    }
  }
}
