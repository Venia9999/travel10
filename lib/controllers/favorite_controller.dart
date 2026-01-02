import 'package:flutter/material.dart';
import '../models/destinasi.dart';

class FavoriteController {
  /// ================= STATE =================
  static final ValueNotifier<Set<String>> _favoriteIds =
      ValueNotifier(<String>{});

  /// ================= GETTER =================
  static ValueNotifier<Set<String>> get favorites => _favoriteIds;

  /// ================= CHECK FAVORITE =================
  static bool isFavorite(Destinasi d) {
    return _favoriteIds.value.contains(d.id);
  }

  /// ================= TOGGLE FAVORITE =================
  static void toggle(Destinasi d) {
    final current = Set<String>.from(_favoriteIds.value);

    if (current.contains(d.id)) {
      current.remove(d.id);
    } else {
      current.add(d.id);
    }

    _favoriteIds.value = current;
  }

  /// ================= GET FAVORITE LIST =================
  static List<Destinasi> getFavorites(List<Destinasi> all) {
    return all.where((d) => _favoriteIds.value.contains(d.id)).toList();
  }
}
