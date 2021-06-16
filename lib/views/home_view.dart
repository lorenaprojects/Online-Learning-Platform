// Copyright 2021 Lorena Munoz. //
// All rights reserved. Lorena Projects. //

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterappapptest/components/institue.dart';
import 'package:flutterappapptest/components/navigation_bar.dart';
import 'package:flutterappapptest/utils/responsiveLayout.dart';
import 'package:flutterappapptest/components/search.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/back1.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[NavigationBar(), Body()],
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
      height: 600,
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          FractionallySizedBox(
            alignment: Alignment.centerLeft,
            widthFactor: .6,
            child: Image.asset(
              'images/clip-education.png',
              scale: 1,
            ),
          ),
          FractionallySizedBox(
            alignment: Alignment.centerRight,
            widthFactor: .6,
            child: Padding(
              padding: EdgeInsets.only(left: 48),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Learning is a treasure that will follow its owner everywhere.',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Oswald',
                      color: Color(0xFF859180),
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      text: 'Welcome to',
                      style: TextStyle(
                        fontSize: 60,
                        color: Color(0xFF859180),
                      ),
                      children: [
                        TextSpan(
                            text: ' JOLS',
                            style: TextStyle(
                              fontSize: 60,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontFamily: 'IndieFlower',
                            )),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12, top: 20),
                    child: Text(
                      'EXPLORE OUR COURSES',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Institution(),
                  Search(),
                ],
              ),
            ),
          ),
          FractionallySizedBox(
            alignment: Alignment.topLeft,
            widthFactor: .65,
            heightFactor: .13,
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 40.0),
                  child: Image.asset(
                    'images/unimelb.jpg',
                    scale: 1,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Image.asset(
                    'images/latrobe.jpg',
                    scale: 1,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Image.asset(
                    'images/monash.jpeg',
                    scale: 1,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Image.asset(
                    'images/rmit.png',
                    scale: 1,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class UniLogo extends StatelessWidget {
  final String logoName;
  UniLogo(this.logoName);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'images/monash.jpeg)',
      width: 50,
      height: 50,
      scale: 1,
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
            Text(
              "Hello!",
              style: TextStyle(
                  fontSize: 40,
                  color: Color(0xFF8591B0),
                  fontWeight: FontWeight.bold,
                  fontFamily: "Oswald"),
            ),
            RichText(
              text: TextSpan(
                text: 'WelCome To ',
                style: TextStyle(fontSize: 40, color: Color(0xFF8591B0)),
                children: <TextSpan>[
                  TextSpan(
                    text: 'JOLS',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                        fontFamily: 'Oswald',
                        color: Colors.white),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12.0, top: 20),
              child: Text(
                "EXPLORE YOUR COURSES",
                style: TextStyle(color: Colors.blue),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: Image.asset(
                "images/clip-education.png",
                scale: 0.6,
              ),
            ),
            SizedBox(
              height: 32,
            ),
            Institution(),
            Search(),
            SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}
