// Copyright 2021 Lorena Munoz. //
// All rights reserved. Lorena Projects. //

import 'package:flutter/material.dart';
import 'package:flutterappapptest/components/quiz_card.dart';

class PreviewContent extends StatelessWidget {
  const PreviewContent({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned(
          top: 0,
          right: -10,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 0),
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xFFeeeddb),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black,
                      offset: Offset(0, 10),
                      blurRadius: 10,
                      spreadRadius: 8),
                ],
              ),
              child: Stack(
                children: <Widget>[
                  Positioned(
                    child: Image.asset('images/leaf2.gif'),
                    bottom: -50,
                    right: -70,
                  ),
                  Column(
                    children: <Widget>[
                      Image.asset(
                        'images/textBack3.jpg',
                        width: 750,
                      ),
                      Container(
                        width: 500,
                        padding: EdgeInsets.only(top: 32, bottom: 22),
                        child: Text(
                          'Why is BI important?',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 35.0,
                            fontFamily: 'PlayfairDisplay',
                          ),
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(left: 100),
                            width: 500,
                            padding: EdgeInsets.only(bottom: 22),
                            child: Text(
                              "Business intelligence can be used by enterprises to support a wide range of business decisions ranging from operational to strategic. Basic operating decisions include product positioning or pricing. Strategic business decisions involve priorities, goals, and directions at the broadest level. In all cases, BI is most effective when it combines data derived from the market in which a company operates (external data) with data from company sources internal to the business such as financial and operations data (internal data). When combined, external and internal data can provide a complete picture which, in effect, creates an 'intelligence' that cannot be derived from any singular set of data.",
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                fontSize: 15,
                                fontFamily: 'PlayfairDisplay',
                                color: Colors.grey.shade900,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Container(
                                decoration: BoxDecoration(
                                  color: Color(0xFFeeeddb),
                                  borderRadius: BorderRadius.circular(25),
                                  image: DecorationImage(
                                      image: AssetImage(
                                        'images/buttonBack1.png',
                                      ),
                                      fit: BoxFit.contain),
                                ),
                                width: 80,
                                height: 50,
                                child: Center(
                                    child: Text(
                                  'Read More',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'PlayfairDisplay',
                                    fontSize: 11,
                                  ),
                                ))),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 42, top: 22),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(
                              width: 30,
                            ),
                            Column(
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image:
                                            AssetImage('images/btnBack4.png'),
                                        fit: BoxFit.fill),
                                  ),
                                  width: 150,
                                  height: 50,
                                  child: Center(
                                    child: Text(
                                      'BI tools',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 19.0,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'IndieFlower',
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                QuizCard(),
                              ],
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Stack(
                              children: <Widget>[
                                Positioned(
                                  child: Image.asset(
                                    'images/circleBack.gif',
                                    width: 250,
                                    height: 250,
                                  ),
                                  bottom: 40,
                                  right: 40,
                                ),
                                Image.asset(
                                  'images/flower.png',
                                  width: 330,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding:
              const EdgeInsets.only(right: 32, left: 32, top: 100, bottom: 32),
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xFFeeeddb),
              boxShadow: [
                BoxShadow(
                    color: Colors.black54,
                    offset: Offset(3, 6),
                    blurRadius: 10,
                    spreadRadius: 10),
              ],
            ),
            child: Stack(
              children: <Widget>[
                Positioned(
                  child: Image.asset(
                    'images/leaf.gif',
                  ),
                ),
                Column(
                  children: <Widget>[
                    Container(
                      width: 300,
                      padding: EdgeInsets.only(top: 32, bottom: 22),
                      child: Text(
                        'What is Business Intelligence (BI)?',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 35.0,
                          fontFamily: 'PlayfairDisplay',
                        ),
                      ),
                    ),
                    Container(
                      width: 350,
                      padding: EdgeInsets.only(bottom: 22),
                      child: Text(
                        'The term Business Intelligence (BI) refers to technologies, applications and practices for the collection, integration, analysis, and presentation of business information. The purpose of Business Intelligence is to support better business decision making.',
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'PlayfairDisplay',
                          color: Colors.grey.shade900,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 22, bottom: 12),
                      child: Container(
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(25),
                            image: DecorationImage(
                                image: AssetImage(
                                  'images/btnBack2.png',
                                ),
                                fit: BoxFit.cover),
//                              boxShadow: [
//                                BoxShadow(
//                                  color: Colors.grey.shade700,
//                                  offset: Offset(0, 8),
//                                  blurRadius: 8,
//                                ),
//                              ],
                          ),
                          width: 200,
                          height: 60,
                          child: Center(
                              child: Text(
                            'Read More',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'PlayfairDisplay',
                              fontSize: 13,
                            ),
                          ))),
                    ),
                    Stack(
                      alignment: Alignment.center,
                      children: <Widget>[
                        Image.asset(
                          'images/TextBackground.jpg',
                          width: 750,
                        ),
                        Container(
                          decoration: BoxDecoration(boxShadow: [
                            BoxShadow(
                              color: Colors.black45,
                              blurRadius: 10,
                              offset: Offset(3, 6),
                              spreadRadius: 5,
                            ),
                          ]),
                          child: Image.asset(
                            'images/video.jpg',
                            width: 520,
                          ),
                        ),
                        Icon(
                          Icons.play_circle_filled,
                          size: 100,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
