class User {
  final String _name;
  final String _email;
  final String _password;

  User(this._name, this._email, this._password);

  String get name => _name;
  String get email => _email;

  bool checkPassword(String password) {
    return _password == password;
  }
}
