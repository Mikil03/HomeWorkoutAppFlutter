import 'package:flutter/material.dart';
import 'package:home_workout_app/screens/home/discover.dart';
import 'package:home_workout_app/screens/home/homepage.dart';
import 'package:home_workout_app/screens/home/report.dart';
import 'package:home_workout_app/screens/home/setting.dart';

void main() => runApp(
      MaterialApp(
        initialRoute: '/',
        routes: {
          '/': (context) => MainPage(),
          '/home': (context) => Home(),
          '/report': (context) => Report(),
          '/discover': (context) => Discover(),
          '/settings': (context) => Settings(),
        },
      ),
    );

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;
  var pages = [
    Home(),
    Discover(),
    Report(),
    Settings(),
  ];
  @override
  Widget build(BuildContext context) {
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
              //Navigator.pushNamed(context, '/${navbar[value]}');
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
  }
}
