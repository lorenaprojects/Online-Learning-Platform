// Copyright 2021 Lorena Munoz. //
// All rights reserved. Lorena Projects. //

import 'package:flutter/material.dart';
import 'package:flutterappapptest/utils/responsiveLayout.dart';

class CourseNavBar extends StatelessWidget {
  final navLinks = [
    'Summary',
    'Assessment',
    'Grades and Feedbacks',
    'DashBoard'
  ];
  List<Widget> navItem() {
    return navLinks.map((text) {
      return Padding(
        padding: EdgeInsets.only(left: 18),
        child: Text(
          text,
          style: TextStyle(
            fontFamily: 'Oswald',
            color: Colors.white,
          ),
        ),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 45, vertical: 38),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  gradient: LinearGradient(
                    colors: [
                      Colors.blue.shade900,
                      Colors.blue.shade100,
                    ],
                    begin: Alignment.bottomRight,
                    end: Alignment.topLeft,
                  ),
                ),
                child: Center(
                  child: Text(
                    'B',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Master Of',
                    style: TextStyle(
                        fontSize: 30,
                        fontFamily: 'Oswald',
                        color: Colors.white),
                  ),
                  Text(
                    'Business Information Management Systems',
                    style: TextStyle(
                        fontSize: 19,
                        fontFamily: 'Oswald',
                        color: Colors.white),
                  ),
                ],
              )
            ],
          ),
          if (!ResponsiveLayout.isSmallScreen(context))
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[...navItem()]..add(
                  InkWell(
                    child: Container(
                      margin: EdgeInsets.only(
                        left: 20,
                      ),
                      width: 120,
                      height: 40,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Colors.purpleAccent, Colors.yellow],
                              begin: Alignment.bottomRight,
                              end: Alignment.topLeft),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xFF6078ea).withOpacity(.3),
                              offset: Offset(0, 8),
                              blurRadius: 8,
                            ),
                          ]),
                      child: Material(
                        color: Colors.transparent,
                        child: Center(
                          child: FlatButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text(
                              'Logout',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                letterSpacing: 1,
                                fontFamily: 'Oswald',
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
            )
          else
            Image.asset(
              'images/menu.png',
              width: 26,
              height: 26,
            )
        ],
      ),
    );
  }
}
