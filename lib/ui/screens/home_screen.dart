import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:muslim_prayer_times/UI/Values/colors.dart';
import 'package:muslim_prayer_times/UI/Values/styles.dart';

class HomeScreen extends StatefulWidget{
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(Styles.systemUIOverlayStyle);
    return Scaffold(
      appBar: AppBar(
        title: Text("Muslim Prayer Times"),
        centerTitle: true,
        backgroundColor: AppColors.primaryColorDark,
      ),
      body: Container(),
      backgroundColor: AppColors.primaryColorLight,
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
           icon: Icon(Icons.alarm),
           title: Text("Prayer Times") 
          ),
          BottomNavigationBarItem(
           icon: Icon(Icons.location_searching), 
           title: Text("Qibla Compass")
          ),
          BottomNavigationBarItem(
           icon: Icon(Icons.event_note), 
           title: Text("Athkar")
          ),
        ],
        backgroundColor: Theme.of(context).primaryColorDark,
        unselectedItemColor: Theme.of(context).primaryColorLight,
        selectedItemColor: Theme.of(context).accentColor,
        onTap: (pageNumber){
          setState((){
            currentIndex = pageNumber;
          });
        },
        currentIndex: currentIndex,
      ),
    );
  }
}