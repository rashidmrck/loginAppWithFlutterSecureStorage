import 'package:flutter/foundation.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SaveUser extends ChangeNotifier {
  final _storage = FlutterSecureStorage();
  String _username = '';
  String _password = '';

  SaveUser() {
    userLoginDetails();
  }

  String get username => _username;
  String get password => _password;

  Future<String> saveUser(String username, String password) async {
    await _storage.write(key: 'username', value: username);
    await _storage.write(key: 'password', value: password);
    userLoginDetails();
    return 'Success';
  }

  void userLoginDetails() async {
    var details = await _storage.readAll();
    if (details != null) {
      _username = details['username'];
      _password = details['password'];
//      print(_username);
//      print(_password);
      notifyListeners();
    }
  }
}
