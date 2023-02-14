import 'package:shared_preferences/shared_preferences.dart';

class CashHelper {
  static late SharedPreferences _sharedPreferences;

  static init() async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }

  static Future<bool> saveData(
      {required String key, required dynamic value}) async {
    if (value is String) return await _sharedPreferences.setString(key, value);
    if (value is int) return await _sharedPreferences.setInt(key, value);
    if (value is bool)
      return await _sharedPreferences.setBool(key, value);
    else
      return _sharedPreferences.setDouble(key, value);
  }

  static dynamic getData({required String key}) {
    _sharedPreferences.get(key);
  }

  static Future<bool> removeData({required String key}) async {
    return await _sharedPreferences.remove(key);
  }
  // Also we can use Singleton Pattern

}
