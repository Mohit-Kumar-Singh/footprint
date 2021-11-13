import 'package:shared_preferences/shared_preferences.dart';

class PrefService {
  static const String UID = "uid";
  static const String FIRST_TIME = "first_time";

  Future createCache(String key, String value) async {
    SharedPreferences _preferences = await SharedPreferences.getInstance();
    _preferences.setString(key, value);
    //key is key by which everwhare the value of passoword gonna check
    //setString set the data
  }

  Future readCache(String key) async {
    SharedPreferences _preferences = await SharedPreferences.getInstance();
    var cache = _preferences.getString(key);
    if (cache == null) return "Null";
    return cache;
  }

  Future removeCache(String key) async {
    SharedPreferences _preferences = await SharedPreferences.getInstance();
    _preferences.remove(key);
  }
}
