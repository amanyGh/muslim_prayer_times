import 'package:flutter/material.dart';
import 'package:muslim_prayer_times/services/shared_preferences_service.dart';
import 'package:muslim_prayer_times/ui/values/themes.dart';
import 'package:muslim_prayer_times/ui/screens/home_screen.dart';
import 'package:muslim_prayer_times/ui/screens/set_location_automatically_screen.dart';
import 'package:muslim_prayer_times/ui/screens/set_location_main_screen.dart';
import 'package:muslim_prayer_times/ui/screens/set_locaton_manually_screen.dart';
import 'package:provider/provider.dart';

import 'models/location_permission_model.dart';

void main() => runApp(MuslimPrayerTimesApp());

class MuslimPrayerTimesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => LocationPermission())
      ],
      child: MaterialApp(
        title: "Muslim Prayer Times",
        debugShowCheckedModeBanner: false,
        theme: AppThemes.appTheme,
        home: FutureBuilder(
          future: SharedPreferencesService.checkIfLocationSaved(),
          builder: (BuildContext buildContext, AsyncSnapshot<bool> snapshot) {
            return snapshot.data == true ? HomeScreen() : SetLocationMainScreen();
          }
        ),
        routes: {
          '/home' : (context) => HomeScreen(),
          '/setLocationMain' : (context) => SetLocationMainScreen(),
          '/setLocationAutomatically' : (context) => SetLocationAutomaticallyScreen(),
          '/setLocationManually' : (context) => SetLocationManuallyScreen(),
        }
      ),
    );
  }
}