// Copyright 2021 Lorena Munoz. //
// All rights reserved. Lorena Projects. //

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterappapptest/components/course_nav_bar.dart';
import 'package:flutterappapptest/utils/responsiveLayout.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';

class CourseView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
//        gradient: LinearGradient(
//          colors: [
//            Color(0xFFF8F8FF),
//            Color(0xFFFCFDFD),
//          ],
//        ),
        image: DecorationImage(
          image: AssetImage('images/back5.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CourseNavBar(),
              Padding(
                padding: const EdgeInsets.only(left: 42.0),
                child: Row(
                  children: <Widget>[
                    Text(
                      'SEMESTER 3',
                      style: TextStyle(
                        fontFamily: 'IndieFlower',
                        fontSize: 70.0,
                      ),
                    ),
                  ],
                ),
              ),
              Body(),
            ],
          ),
        ),
      ),
    );
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      largeScreen: LargeChild(),
      smallScreen: SmallChild(),
    );
  }
}

class LargeChild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          SubjectCard(
            widthFactor: 0.9,
            heightFactor: 0.9,
            imageName: 'images/clip-list-is-empty.png',
            subjectTitle: 'BUS5BPD',
            alignment: Alignment.topCenter,
            progressBarValue: 25,
          ),
          SubjectCard(
            widthFactor: 1,
            heightFactor: 1,
            imageName: 'images/clip.png',
            subjectTitle: 'BUS5BRM',
            alignment: Alignment.topCenter,
            progressBarValue: 35,
            isHighlighted: true,
          ),
          SubjectCard(
            heightFactor: 0.9,
            widthFactor: 0.9,
            imageName: 'images/error.png',
            subjectTitle: 'CSE5ENT',
            alignment: Alignment.topCenter,
            progressBarValue: 30,
          ),
          SubjectCard(
            heightFactor: 0.9,
            widthFactor: 0.9,
            imageName: 'images/uploading.png',
            subjectTitle: 'BUS5BPI',
            alignment: Alignment.topCenter,
            progressBarValue: 37,
          ),
        ],
      ),
    );
  }
}

class SubjectCard extends StatelessWidget {
  final double widthFactor;
  final double heightFactor;
  final String imageName;
  final String subjectTitle;
  final Alignment alignment;
  final bool isHighlighted;
  final int progressBarValue;
  SubjectCard(
      {this.widthFactor,
      this.heightFactor,
      this.imageName,
      this.subjectTitle,
      this.alignment,
      this.isHighlighted,
      this.progressBarValue});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: FractionallySizedBox(
        alignment: alignment,
        widthFactor: widthFactor,
        heightFactor: heightFactor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: isHighlighted == true
                      ? Color(0xFFD1726C).withOpacity(0.3)
                      : Colors.white.withOpacity(0.3),
                  border: Border.all(color: Colors.transparent, width: 5.0),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black12,
                        offset: Offset(0, 8),
                        blurRadius: 12)
                  ]),
              child: Image.asset(
                imageName,
              ),
            ),
            Text(
              subjectTitle,
              style: TextStyle(
                fontSize: 50,
                fontFamily: 'Oswald',
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
//                  RoundedProgressBar(
//                    percent: 30.0,
//                    childLeft: Text("30%"),
//                    style: RoundedProgressBarStyle(
//                      borderWidth: 2,
//                      widthShadow: 5,
//                      colorProgress: Color(0xffe74c3c),
//                      colorProgressDark: Color(0xffc0392b),
//                    ),
//                    margin: EdgeInsets.symmetric(vertical: 16),
//                    borderRadius: BorderRadius.circular(24),
//                  ),
            Container(
              width: 300,
              child: FAProgressBar(
                progressColor: Color(0xFF65ADA9),
                changeColorValue: 50,
                changeProgressColor: Colors.green,
                currentValue: progressBarValue,
                displayText: '%',
                size: 15,
                backgroundColor: Color(0xFFB6E5D0),
              ),
            ),
//                  InkWell(
//                    child: Container(
//                      width: 320,
//                      height: 50,
//                      decoration: BoxDecoration(
//                          gradient: LinearGradient(
//                              colors: [Colors.red, Colors.yellowAccent],
//                              begin: Alignment.bottomRight,
//                              end: Alignment.topLeft),
//                          borderRadius: BorderRadius.circular(20),
//                          boxShadow: [
//                            BoxShadow(
//                              color: Color(0xFF6078ea).withOpacity(.3),
//                              offset: Offset(0, 8),
//                              blurRadius: 8,
//                            ),
//                          ]),
//                      child: Material(
//                        color: Colors.transparent,
//                        child: Center(
//                          child: FlatButton(
//                            onPressed: () {
//                              Navigator.push(context,
//                                  MaterialPageRoute(builder: (context) {
//                                return CourseView();
//                              }));
//                            },
//                            child: Text(
//                              'START',
//                              style: TextStyle(
//                                color: Colors.white,
//                                fontSize: 28,
//                                letterSpacing: 1,
//                                fontFamily: 'Oswald',
//                              ),
//                            ),
//                          ),
//                        ),
//                      ),
//                    ),
//                  ),
          ],
        ),
      ),
    );
  }
}

class SmallChild extends StatelessWidget {
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
                    fontSize: 30,
                    color: Colors.white,
                    fontFamily: "IndieFlower"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12.0, top: 20),
              child: Text(
                "BUS5BPD",
                style: TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Oswald"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12.0, top: 20),
              child: Text(
                "BUS5BRM",
                style: TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Oswald"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12.0, top: 20),
              child: Text(
                "CES5ENT",
                style: TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Oswald"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12.0, top: 20),
              child: Text(
                "BUS5BPI",
                style: TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Oswald"),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: Image.network(
                "images/error.png",
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
