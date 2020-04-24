import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesService {
  static Future<bool> checkIfLocationSaved() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getBool('locationIsSaved');
  }
}