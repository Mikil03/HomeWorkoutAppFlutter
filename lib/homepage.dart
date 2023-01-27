import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  static var time = DateTime.now();
  // var date = [
  //   time.day - 3,
  //   time.day - 2,
  //   time.day - 1,
  //   time.day,
  //   time.day + 1,
  //   time.day + 2,
  //   time.day + 3
  // ];
  var date = [22, 23, 24, 25, 26, 27, 28];
  var challenge = [
    ['cover_fullbody.jpg', 'UPPER BODY'],
    ['cover_lower_body.jpg', 'LOWER BODY']
  ];

  var beginner = [
    ['cover_abs_1.jpg', 'ABS BEGINNER'],
    ['cover_chest_1.jpg', 'CHEST BEGINNER'],
    ['cover_arm_1.jpg', 'ARM BEGINNER'],
    ['cover_shoulder_1.jpg', 'SHOULDER &\nBACK BEGINNER'],
    ['cover_leg_1.jpg', 'LEG BEGINNER']
  ];
  var intermediate = [
    ['cover_abs_2.jpg', 'ABS INTERMEDIATE'],
    ['cover_chest_2.jpg', 'CHEST INTERMEDIATE'],
    ['cover_arm_2.jpg', 'ARM INTERMEDIATE'],
    ['cover_shoulder_2.jpg', 'SHOULDER & BACK\nINTERMEDIATE'],
    ['cover_leg_2.jpg', 'LEG INTERMEDIATE']
  ];

  var advanced = [
    ['cover_abs_3.jpg', 'ABS ADVANCED'],
    ['cover_chest_3.jpg', 'CHEST ADVANCED'],
    ['cover_arm_3.jpg', 'ARM ADVANCED'],
    ['cover_shoulder_3.jpg', 'SHOULDER &\nBACK ADVANCED'],
    ['cover_leg_3.jpg', 'LEG ADVANCED']
  ];

  @override
  Widget build(BuildContext context) {
    List navbar = ['home', 'discover', 'report', 'settings'];
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 235,
              child: Stack(
                children: [
                  Positioned(
                    child: Container(
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
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                  ),
                  Positioned.fill(
                    top: 110,
                    child: Padding(
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  for (var i in date) WeekDate(i),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    '7X4 CHALLENGE',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  for (var i in challenge) homePageChallengeCard(i),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'BEGINNER',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  for (var i in beginner) homePageCard1(i),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'INTERMEDIATE',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  for (var i in intermediate) homePageCard2(i),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'ADVANCE',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  for (var i in advanced) homePageCard3(i),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class homePageChallengeCard extends StatelessWidget {
  late List details;
  homePageChallengeCard(this.details, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 140,
          child: Stack(children: [
            Positioned.fill(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image(
                  image: AssetImage('assets/${details[0]}'),
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            Positioned(
                top: 70,
                left: 20,
                child: Text(
                  '${details[1]}',
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
      ],
    );
  }
}

class homePageCard1 extends StatelessWidget {
  late List details;
  homePageCard1(this.details, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 140,
          child: Stack(
            children: [
              Positioned.fill(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image(
                    image: AssetImage('assets/${details[0]}'),
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
              Positioned(
                top: 20,
                left: 20,
                child: Text(
                  '${details[1]}',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Positioned(
                bottom: 20,
                left: 10,
                child: Container(
                  height: 20,
                  child: Image(
                    image: AssetImage('assets/light.png'),
                    color: Color.fromARGB(255, 14, 0, 216),
                  ),
                ),
              ),
              Positioned(
                bottom: 20,
                left: 25,
                child: Container(
                  height: 20,
                  child: Image(
                    image: AssetImage('assets/light.png'),
                    color: Colors.grey[500],
                  ),
                ),
              ),
              Positioned(
                bottom: 20,
                left: 40,
                child: Container(
                  height: 20,
                  child: Image(
                    image: AssetImage('assets/light.png'),
                    color: Colors.grey[500],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class homePageCard2 extends StatelessWidget {
  late List details;
  homePageCard2(this.details, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 140,
          child: Stack(
            children: [
              Positioned.fill(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image(
                    image: AssetImage('assets/${details[0]}'),
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
              Positioned(
                top: 20,
                left: 20,
                child: Text(
                  '${details[1]}',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Positioned(
                bottom: 20,
                left: 10,
                child: Container(
                  height: 20,
                  child: Image(
                    image: AssetImage('assets/light.png'),
                    color: Color.fromARGB(255, 14, 0, 216),
                  ),
                ),
              ),
              Positioned(
                bottom: 20,
                left: 25,
                child: Container(
                  height: 20,
                  child: Image(
                    image: AssetImage('assets/light.png'),
                    color: Color.fromARGB(255, 14, 0, 216),
                  ),
                ),
              ),
              Positioned(
                bottom: 20,
                left: 40,
                child: Container(
                  height: 20,
                  child: Image(
                    image: AssetImage('assets/light.png'),
                    color: Colors.grey[500],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class homePageCard3 extends StatelessWidget {
  late List details;
  homePageCard3(this.details, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 140,
          child: Stack(
            children: [
              Positioned.fill(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image(
                    image: AssetImage('assets/${details[0]}'),
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
              Positioned(
                top: 20,
                left: 20,
                child: Text(
                  '${details[1]}',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Positioned(
                bottom: 20,
                left: 10,
                child: Container(
                  height: 20,
                  child: Image(
                    image: AssetImage('assets/light.png'),
                    color: Color.fromARGB(255, 14, 0, 216),
                  ),
                ),
              ),
              Positioned(
                bottom: 20,
                left: 25,
                child: Container(
                  height: 20,
                  child: Image(
                    image: AssetImage('assets/light.png'),
                    color: Color.fromARGB(255, 14, 0, 216),
                  ),
                ),
              ),
              Positioned(
                bottom: 20,
                left: 40,
                child: Container(
                  height: 20,
                  child: Image(
                    image: AssetImage('assets/light.png'),
                    color: Color.fromARGB(255, 14, 0, 216),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class WeekDate extends StatelessWidget {
  int date;
  WeekDate(this.date, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.grey[300],
        ),
        padding: EdgeInsets.all(10),
        child: Text(
          '$date',
          style: TextStyle(
            fontSize: 17,
            color: Colors.grey[600],
            fontWeight: FontWeight.w600,
          ),
        ));
  }
}
