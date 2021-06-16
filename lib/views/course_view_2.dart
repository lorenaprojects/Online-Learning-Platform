// Copyright 2021 Lorena Munoz. //
// All rights reserved. Lorena Projects. //

import 'package:flutter/material.dart';
import 'package:flutterappapptest/components/nav_bar.dart';
import 'package:flutter/rendering.dart';
import 'package:flutterappapptest/utils/responsiveLayout.dart';
import 'package:flutterappapptest/components/subject_card.dart';
import 'package:flutterappapptest/utils/progress_tracking.dart';
import 'package:intl/intl.dart';

class MyCoursePage extends StatefulWidget {
  @override
  _MyCoursePageState createState() => _MyCoursePageState();
}

class _MyCoursePageState extends State<MyCoursePage> {
  DateTime timeNow = DateTime.now();

  String getCurrentTime() {
    print(DateFormat('kk:mm').format(timeNow));
    return DateFormat('kk:mm').format(timeNow);
  }

  //use constructor to avoid error
  int getCurrentHourInt() {
    String cHour = DateFormat('kk').format(timeNow);
    int cHourInt = int.parse(cHour);
    print(cHourInt);
    return cHourInt;
  }

  @override
  Widget build(BuildContext context) {
//    double w = MediaQuery.of(context).size.width;
//    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: (getCurrentHourInt() > 6 && getCurrentHourInt() < 18)
          ? Color(0xFFF5F6FA)
          : Color(0xFF041334),
      body: Stack(
        children: <Widget>[
//          Align(
//            alignment: Alignment.centerRight,
//            child: CustomPaint(
//              painter: ShapePainter(),
//              child: Container(
//                width: w / 2,
//                height: h,
//              ),
//            ),
//          ),

          Positioned(
            right: -20,
            top: -20,
            child: (getCurrentHourInt() > 6 && getCurrentHourInt() < 18)
                ? Image.asset('images/sun.gif')
                : Image.asset(
                    'images/moon.gif',
                    width: 374,
                    height: 380,
                  ),
          ),
          Positioned(
            right: 60,
            top: 400,
            child: Text(
              getCurrentTime(),
              style: TextStyle(
                fontFamily: 'Orbitron',
                fontWeight: FontWeight.bold,
                color: (getCurrentHourInt() > 6 && getCurrentHourInt() < 18)
                    ? Colors.black.withOpacity(0.6)
                    : Colors.white,
                fontSize: 40,
              ),
            ),
          ),

          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                NavBar(),
                SizedBox(
                  height: 60,
                ),
                Body(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      largeScreen: LargeScreen(),
      mediumScreen: MediumScreen(),
      smallScreen: SmallScreen(),
    );
  }
}

class LargeScreen extends StatelessWidget {
  final int progressOne = ProgressTracking().unit1Progress;
  final int progressTwo = ProgressTracking().unit2Progress;
  final int progressThree = ProgressTracking().unit3Progress;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 120),
      child: Column(
        children: <Widget>[
          SubjectCard(
            subjectTitle: 'BUS5BPD',
            outline:
                'In this subject, you will work in small groups/teams and will be required to prepare a project plan, analyse, document and present business intelligence information requirements, design a solution to meet those requirements, document and present project design as well as write a detailed report justifying the chosen design and solution',
            colors: [
              Color(0xFF23BCBA),
              Color(0xFF45E994),
            ],
            imageName: 'Hugo',
            percent: progressOne,
            progressColor: Colors.greenAccent,
          ),
          SubjectCard(
            subjectTitle: 'BUS5BRM',
            outline:
                'This subject provides a critical engagement with business research methods, and considers both quantitative and qualitative approaches to research. It provides students with skills required to undertake empirical, archival, descriptive, and analytical research in business contexts. Report, thesis writing, and presentation skills are also considered.',
            colors: [
              Colors.orange,
              Colors.yellowAccent,
            ],
            imageName: 'BRM',
            percent: progressTwo,
            progressColor: Colors.orangeAccent,
          ),
          SubjectCard(
            subjectTitle: 'BUS5EIS',
            outline:
                'You will be introduced to the skills needed to become an ERP consultant and have the opportunity to develop your capacity to analyse and reengineer business processes based on ERP life cycle using well known ERP tools like SAP S/4 HANA.',
            colors: [
              Colors.blue.shade700,
              Colors.blue[200],
            ],
            imageName: 'EIS',
            percent: progressThree,
            progressColor: Colors.blueAccent,
          ),
        ],
      ),
    );
  }
}

class MediumScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 120),
      child: Column(
        children: <Widget>[
          SubjectCard(
            subjectTitle: 'BUS5BPD',
            outline:
                'Prepare a project plan, analyse, document and present business intelligence information requirements, Design a solution to meet those requirements, document and Present project design as well as write a detailed report justifying the chosen design and solution',
            colors: [
              Color(0xFF23BCBA),
              Color(0xFF45E994),
            ],
            percent: 64,
            progressColor: Colors.greenAccent,
          ),
          SubjectCard(
            subjectTitle: 'BUS5BRM',
            outline:
                'Undertake empirical, archival, descriptive, and analytical research in business contexts. Focus on report, thesis writing, and presentation',
            colors: [
              Colors.orange,
              Colors.yellowAccent,
            ],
            percent: 25,
            progressColor: Colors.orangeAccent,
          ),
          SubjectCard(
            subjectTitle: 'BUS5EIS',
            outline:
                'Learn skills needed to become an ERP consultant and have the opportunity to develop your capacity to analyse and reengineer business processes based on ERP life cycle using well known ERP tools like SAP S/4 HANA.',
            colors: [
              Colors.blue.shade700,
              Colors.blue[200],
            ],
            percent: 82,
            progressColor: Colors.blueAccent,
          ),
        ],
      ),
    );
  }
}

class SmallScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 12.0, top: 5),
              child: Text(
                'Welcome Tianyi!',
                style: TextStyle(
                    fontSize: 40,
                    color: Colors.green.shade400,
                    fontFamily: "IndieFlower"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12.0, top: 20),
              child: Text(
                "BUS5BPD",
                style: TextStyle(
                    fontSize: 40,
                    color: Color(0xFF7C8FB5),
                    fontWeight: FontWeight.bold,
                    fontFamily: "Raleway"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12.0, top: 20),
              child: Text(
                "BUS5BRM",
                style: TextStyle(
                    fontSize: 40,
                    color: Color(0xFF7C8FB5),
                    fontWeight: FontWeight.bold,
                    fontFamily: "Raleway"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12.0, top: 20),
              child: Text(
                "CES5ENT",
                style: TextStyle(
                    fontSize: 40,
                    color: Color(0xFF7C8FB5),
                    fontWeight: FontWeight.bold,
                    fontFamily: "Raleway"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12.0, top: 20),
              child: Text(
                "BUS5BPI",
                style: TextStyle(
                    fontSize: 40,
                    color: Color(0xFF7C8FB5),
                    fontWeight: FontWeight.bold,
                    fontFamily: "Raleway"),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: Image.network(
                "images/hugo.png",
                scale: 1,
              ),
            ),
            SizedBox(
              height: 32,
            ),
            SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}
