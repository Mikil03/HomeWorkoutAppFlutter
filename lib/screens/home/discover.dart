import 'package:flutter/material.dart';

class Discover extends StatefulWidget {
  const Discover({Key? key}) : super(key: key);

  @override
  State<Discover> createState() => _DiscoverState();
}

var details = [
  ['recent_dis_75.png', 'Belly Fat Burner HIIT', '14 min ∙ Beginner'],
  ['recent_dis_48.png', 'Loose fat(NO JUMPING!)', '15 min ∙ Intermediate'],
  ['recent_dis_24.png', 'HIIT Killer Core', '20 min ∙ Intermediate']
];

var details2 = [
  ['recent_dis_24.png', 'HIIT Killer Core', '20 min ∙ Intermediate'],
  ['recent_dis_48.png', 'Loose fat(NO JUMPING!)', '15 min ∙ Intermediate'],
  ['recent_dis_75.png', 'Belly Fat Burner HIIT', '14 min ∙ Beginner']
];

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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10),
              child: Stack(
                children: [
                  SizedBox(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image(
                        image: AssetImage('assets/pushup_discover.jpeg'),
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                    width: MediaQuery.of(context).size.width,
                    height: 200,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 150, left: 10),
                    child: Text(
                      'Get rid of your stomach HIIT',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w700),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 200, top: 20),
              child: Text(
                'Picks for you',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
            ),
            SizedBox(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: List.generate(
                  details.length,
                  (index) {
                    return custom_cards(details[index]);
                  },
                ),
              ),
            ),
            for (var i in details2) custom_cards(i)
          ],
        ),
      ),
    );
  }
}

class custom_cards extends StatelessWidget {
  var detail;
  custom_cards(this.detail, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      child: Row(
        children: [
          Image(
            image: AssetImage('assets/${detail[0]}'),
            width: 95,
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${detail[1]}',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                '${detail[2]}',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
              Divider(
                height: 2,
                thickness: 2,
                color: Colors.grey[200],
              )
            ],
          ),
        ],
      ),
    );
  }
}
