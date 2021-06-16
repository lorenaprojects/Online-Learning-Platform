// Copyright 2021 Lorena Munoz. //
// All rights reserved. Lorena Projects. //

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutterappapptest/utils/responsiveLayout.dart';

class NavBar extends StatelessWidget {
  final navItems = ['Home', 'Lectures', 'Assessments', 'Grades'];

  List<Widget> myNavItem() {
    return navItems.map((item) {
      return Padding(
        padding: EdgeInsets.only(left: 18),
        child: Text(
          item,
          style: TextStyle(
            fontFamily: 'Raleway',
            fontWeight: FontWeight.w500,
          ),
        ),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: ResponsiveLayout.isSmallScreen(context) ? 20 : 130,
        right: ResponsiveLayout.isSmallScreen(context) ? 40 : 130,
        top: 25,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: Padding(
                  //setting the width and height doesn't help at all. Need to set padding
                  padding: const EdgeInsets.all(12.0),
                  child: Image.asset(
                    'images/latrobe.jpg',
                    fit: BoxFit.contain,
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
                        color: Color(0xFF7C8FB5)),
                  ),
                  Text(
                    'Business Information Management Systems',
                    style: TextStyle(
                        fontSize:
                            ResponsiveLayout.isSmallScreen(context) ? 15 : 20,
                        fontFamily: 'Raleway',
                        color: Color(0xFF7C8FB5)),
                  ),
                ],
              )
            ],
          ),
          if (ResponsiveLayout.isLargeScreen(context))
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              //...navItem() for the items and ..add for the button
              children: <Widget>[...myNavItem()]..add(
                  //why it must be a padding? no idea, the other doesn't have this problem
                  //**************found the problem!!!!************ because it should be
//    children: <Widget>[
//    ...myNavItem()]
//    ..add(
                  // []..add you can add any widget you want
//    children: <Widget>[
//    ...myNavItem()
//    ..add(   )]     -- we can only add padding as myNavItem() are all paddings

                  Container(
                    margin: EdgeInsets.only(left: 20),
                    width: 120,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      gradient: LinearGradient(colors: [
                        Colors.green.shade700,
                        Colors.green.shade200,
                      ]),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          offset: Offset(0, 4),
                          blurRadius: 4,
                        )
                      ],
                    ),
                    child: Center(
                      child: FlatButton(
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          'Logout',
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                  ),
                ),
            )
          else
            Image.asset(
              'images/menu_black.png',
              width: 26,
              height: 26,
            )
        ],
      ),
    );
  }
}
