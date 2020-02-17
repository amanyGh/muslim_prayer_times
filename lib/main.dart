import 'package:flutter/material.dart';

void main() => runApp(MuslimPrayerTimesApp());

class MuslimPrayerTimesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Muslim Prayer Times",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(),
      ),
    );
  }
}
