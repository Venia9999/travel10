import '../models/user.dart';

class AuthController {
  static final List<User> _users = [];

  static bool register(String name, String email, String password) {
    email = email.trim().toLowerCase();
    password = password.trim();

    final exists = _users.any((u) => u.email == email);
    if (exists) return false;

    _users.add(User(name, email, password));
    return true;
  }

  static User? login(String email, String password) {
    email = email.trim().toLowerCase();
    password = password.trim();

    try {
      return _users.firstWhere(
        (u) => u.email == email && u.checkPassword(password),
      );
    } catch (_) {
      return null;
    }
  }

  // 🔍 OPTIONAL: bantu debug
  static void debugUsers() {
    for (var u in _users) {
      print('${u.email}');
    }
  }
}
