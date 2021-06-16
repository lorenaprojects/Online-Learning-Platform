// Copyright 2021 Lorena Munoz. //
// All rights reserved. Lorena Projects. //

import 'package:flutter/material.dart';
import 'package:flutterappapptest/utils/responsiveLayout.dart';
import 'start_button.dart';
import 'shortcut_icon.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class SubjectCard extends StatelessWidget {
  final String subjectTitle;
  final String outline;
  final List<Color> colors;
  final String imageName;
  final int percent;
  final Color progressColor;

  SubjectCard(
      {this.subjectTitle,
      this.outline,
      this.colors,
      this.imageName,
      this.percent,
      this.progressColor});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Image.asset(
                  'images/$subjectTitle.png',
                  width: 300,
                ),
                Text(
                  'Subject Outline',
                  style: TextStyle(
                    fontSize: 80,
                    color: Color(0xFF7C8FB5),
                    fontWeight: FontWeight.w700,
                    fontFamily: 'IndieFlower',
                  ),
                ),
                ConstrainedBox(
                  constraints: BoxConstraints(
                    maxWidth: 550,
                  ),
                  child: Text(
                    outline,
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF7C8FB5),
                      fontFamily: 'Raleway',
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  children: <Widget>[
                    StartButton(
                      buttonTitle: 'START SUBJECT',
                      colors: colors,
                      isStartButton: false,
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    StartButton(
                      buttonTitle: 'Watch Video',
                      colors: [Colors.white, Colors.white],
                      isStartButton: true,
                    ),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                Row(
                  children: <Widget>[
                    Tooltip(
                      message: 'add a new thing',
                      child: ShortCutIcon(
                        ionc: Icons.add,
                      ),
                    ),
                    ShortCutIcon(
                      ionc: Icons.save,
                    ),
                    ShortCutIcon(
                      ionc: Icons.verified_user,
                    ),
                    ShortCutIcon(
                      ionc: Icons.tab,
                    ),
                    SizedBox(
                      width: 60,
                    ),
                    CircularStepProgressIndicator(
                      totalSteps: 100,
                      currentStep: percent,
                      stepSize: 10,
                      selectedColor: progressColor,
                      unselectedColor: Colors.grey[200],
                      padding: 0,
                      width: 100,
                      height: 100,
                      selectedStepSize: 15,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                //Gradient Text is not working in web??????  use images instead
              ],
            ),
            Image.asset(
              'images/$imageName.png',
              width: ResponsiveLayout.isLargeScreen(context) ? 500 : 10,
            ),
          ],
        ),
        Image.asset(
          'images/down.gif',
          width: 50,
          height: 50,
        ),
      ],
    );
  }
}
