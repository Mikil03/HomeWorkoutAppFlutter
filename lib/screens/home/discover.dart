import 'package:flutter/material.dart';

class Discover extends StatefulWidget {
  const Discover({Key? key}) : super(key: key);

  @override
  State<Discover> createState() => _DiscoverState();
}

class _DiscoverState extends State<Discover> {
  int _currentIndex = 1;
  List navbar = ['home', 'discover', 'report', 'settings'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Discover',
          style: TextStyle(
            fontSize: 23,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
