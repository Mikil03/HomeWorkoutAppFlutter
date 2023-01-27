import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  List options = [
    ['workout_settings.png', 'Workout settings'],
    ['general_settings.png', 'General settings'],
    ['voice_options.png', 'Voice options (TTS)'],
    ['language_options.png', 'Language options'],
  ];

  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Settings',
          style: TextStyle(
            fontSize: 23,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 1,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
              ),
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Backup & Restore',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Image(
                                image: AssetImage('assets/google.png'),
                                width: 40,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Icon(
                                Icons.facebook,
                                color: Colors.blue[900],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Sign in and synchronize your data',
                            style: TextStyle(fontSize: 15, color: Colors.grey),
                          )
                        ],
                      ),
                      Icon(
                        Icons.restart_alt,
                        color: Colors.blue[900],
                        size: 30,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.blue[600],
                        borderRadius: BorderRadius.circular(40),
                      ),
                      padding: EdgeInsets.symmetric(vertical: 15),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              image: AssetImage('assets/ad-blocker.png'),
                              width: 30,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'GO PREMIUM',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  for (var opn in options) SettingOptions(opn),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'assets/google_fit.png',
                              width: 45,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              'Sync to Google Fit',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Switch(
                                value: selected,
                                onChanged: (bool current) {
                                  setState(() {
                                    selected = current;
                                  });
                                }),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
              ),
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              child: Column(
                children: [
                  Container(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.share,
                              color: Colors.grey,
                              size: 30,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              'Share with Friends',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                        Divider(
                          height: 30,
                          color: Colors.grey[300],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star_rate,
                              color: Colors.grey,
                              size: 30,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              'Rate us',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                        Divider(
                          height: 30,
                          color: Colors.grey[300],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.rate_review_rounded,
                              color: Colors.grey,
                              size: 30,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              'Feedback',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                        Divider(
                          height: 30,
                          color: Colors.grey[300],
                        ),
                        Row(
                          children: [
                            Image.asset(
                              'assets/ad-blocker.png',
                              color: Colors.grey,
                              width: 30,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              'Remove Ads',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
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

class SettingOptions extends StatelessWidget {
  late List opn;
  SettingOptions(this.opn, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/${opn[0]}',
                    width: 45,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    '${opn[1]}',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey[300],
                  ),
                ],
              )
            ],
          ),
          Divider(
            height: 30,
            color: Colors.grey[300],
          )
        ],
      ),
    );
  }
}

class SettingOptions2 extends StatelessWidget {
  late List opn;
  SettingOptions2(this.opn, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  // Image.asset(
                  //   'assets/${opn[0]}',
                  //   fit: BoxFit.fill,
                  // ),
                  opn[0],
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    '${opn[1]}',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Divider(
            height: 30,
            color: Colors.grey[300],
          )
        ],
      ),
    );
  }
}
