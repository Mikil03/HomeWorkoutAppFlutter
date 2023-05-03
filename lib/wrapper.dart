import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:home_workout_app/screens/authenticate/authenticate.dart';
import 'package:home_workout_app/screens/home/discover.dart';
import 'package:home_workout_app/screens/home/homepage.dart';
import 'package:home_workout_app/screens/home/report.dart';
import 'package:home_workout_app/screens/home/setting.dart';

class Wrapper extends StatefulWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  State<Wrapper> createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  int _currentIndex = 0;
  var pages = [
    Home(),
    Discover(),
    Report(),
    Settings(),
  ];
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User?>(context);
    if (user != null) {
      return Scaffold(
        body: IndexedStack(
          index: _currentIndex,
          children: pages,
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedItemColor: Colors.blue[900],
          unselectedItemColor: Colors.grey,
          selectedIconTheme: IconThemeData(color: Colors.blue[900]),
          onTap: ((value) => setState(() {
                _currentIndex = value;
              })),
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.alarm,
              ),
              label: 'Training',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.compass_calibration,
              ),
              label: 'Discover',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.bar_chart_rounded,
              ),
              label: 'Report',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              label: 'Settings',
            ),
          ],
        ),
      );
    } else {
      return Authenticate();
    }
  }
}
