// Copyright (c) 2019, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
      home: MyApp(),
    ));

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var date = [22, 23, 24, 25, 26, 27, 28];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'HOME WORKOUT',
          style: TextStyle(
            color: Colors.white,
            fontSize: 23,
          ),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Color.fromARGB(255, 113, 113, 251),
            Color.fromARGB(236, 60, 60, 254)
          ])),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(10),
            height: 170,
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              Color.fromARGB(255, 113, 113, 251),
              Color.fromARGB(236, 60, 60, 254)
            ])),
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Text(
                          '15',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            letterSpacing: 1.2,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'WORKOUTS',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            letterSpacing: 1,
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          '3944',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            letterSpacing: 1.2,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'KCAL',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            letterSpacing: 1,
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          '187',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            letterSpacing: 1.2,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'MINUTES',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            letterSpacing: 1,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              elevation: 20,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              'WEEK GOAL',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.border_color_outlined,
                              size: 18,
                            ),
                          ],
                        ),
                        Text(
                          '0/7',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.2,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        for (var i in date) WeekDate(i),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Text(
              '7X4 CHALLENGE',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Stack(children: [
                Positioned.fill(
                  child: Image(
                    image: AssetImage('assets/finalupperbody.jpg'),
                    fit: BoxFit.fitWidth,
                  ),
                ),
                Positioned(
                    top: 70,
                    left: 20,
                    child: Text(
                      'FULL BODY',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
                Positioned(
                    top: 100,
                    left: 20,
                    child: Text(
                      '7x4 CHALLENGE',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
              ]),
            ),
          )
        ],
      ),
    );
  }
}

class WeekDate extends StatelessWidget {
  late int date;
  WeekDate(this.date);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Text(
        '$date',
        style: TextStyle(
          fontSize: 17,
          color: Colors.grey[600],
          fontWeight: FontWeight.w600,
        ),
      ),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.grey[300],
      ),
    );
  }
}
