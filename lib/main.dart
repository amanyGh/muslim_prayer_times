import 'package:flutter/material.dart';
import 'package:muslim_prayer_times/ui/Screens/home_screen.dart';
import 'package:muslim_prayer_times/ui/Values/themes.dart';
import 'package:muslim_prayer_times/ui/screens/set_location_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() => runApp(MuslimPrayerTimesApp());

class MuslimPrayerTimesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "Muslim Prayer Times",
      debugShowCheckedModeBanner: false,
      theme: AppThemes.appTheme,
      home: FutureBuilder(
        future: checkIfLocationSaved(),
        builder: (BuildContext buildContext, AsyncSnapshot<bool> snapshot) {
          return snapshot.data == true ? HomeScreen() : SetLocationScreen();
        }
      ),
      routes: {
        '/home' : (context) => HomeScreen(),
        '/editLocation' : (context) => SetLocationScreen(),
      }
    );
  }

  Future<bool> checkIfLocationSaved() async {
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  return sharedPreferences.getBool('locationIsSaved');
}
}


