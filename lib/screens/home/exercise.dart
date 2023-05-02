import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Exercise extends StatelessWidget {
  Exercise({Key? key}) : super(key: key);
  var workouts = [
    '53836-inchworm.json',
    '53837-jumping-jack.json',
    '53838-reverse-crunches.json',
    '55808-squat-kick.json',
    '61154-seated-abs-circles.json',
    '66353-shoulder-stretch.json',
    '74504-jumping-squats.json',
    '75821-wide-arm-push-up.json',
    '77659-staggered-push-ups.json',
    '78142-punches.json',
    '90054-squat-reach.json',
    '95563-military-push-ups.json',
    '95567-squat-kicks.json',
    '143069-burpee-and-jump-exercise.json',
    '143078-split-jump-exercise.json'
  ];

  var name = [
    'INCHWORM',
    'JUMPING JACKS',
    'REVERSE CRUNCHES',
    'SQUAT KICKS',
    'SEATED ABS CIRCLES',
    'SHOULDER STRETCHES',
    'JUMPING SQUATS',
    'WIDE ARM PUSH-UP',
    'STAGGERED PUSH-UP',
    'PUNCHES',
    'SQUAT REACH',
    'MILITARY PUSH-UP',
    'SQUAT KICKS',
    'BURPEE',
    'SPLIT JUMP'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 170,
                  child: Image(
                    image: AssetImage('assets/cover_abs_1.jpg'),
                    fit: BoxFit.fitHeight,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10, top: 140),
                  child: Text(
                    'ABS BEGINNER',
                    style: TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                        fontWeight: FontWeight.w600),
                  ),
                )
              ],
            ),
            Divider(
              height: 5,
              thickness: 5,
              color: Colors.grey[200],
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 10, top: 7, bottom: 7, right: 150),
              child: Text(
                '30 mins ∙ 15 workouts',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w700),
              ),
            ),
            Divider(
              height: 2,
              thickness: 2,
              color: Colors.grey[100],
            ),
            // for (var i in workouts)
            for (int i = 0; i < workouts.length; i++)
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                child: Column(
                  children: [
                    Row(children: [
                      Icon(
                        Icons.menu,
                        color: Colors.grey,
                        size: 25,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      LottieBuilder.asset(
                        'assets/animations/${workouts[i]}',
                        height: 100,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        '${name[i]}\n x16',
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.w600),
                      ),
                    ]),
                    SizedBox(
                      height: 5,
                    ),
                    Divider(
                      height: 5,
                      thickness: 1,
                      color: Colors.grey[200],
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
