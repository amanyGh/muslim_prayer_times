import 'package:flutter/material.dart';
import 'package:muslim_prayer_times/UI/Screens/home_screen.dart';
import 'package:muslim_prayer_times/UI/Values/themes.dart';

void main() => runApp(MuslimPrayerTimesApp());

class MuslimPrayerTimesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Muslim Prayer Times",
      debugShowCheckedModeBanner: false,
      theme: AppThemes.appTheme,
      home: HomeScreen(),
    );
  }
}
