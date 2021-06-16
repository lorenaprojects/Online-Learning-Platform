// Copyright 2021 Lorena Munoz. //
// All rights reserved. Lorena Projects. //

import 'package:flutter/material.dart';
import 'package:flutterappapptest/views/subject_view.dart';

class StartButton extends StatelessWidget {
  final List<Color> colors;
  final String buttonTitle;
  final bool isStartButton;

  StartButton({this.colors, this.buttonTitle, this.isStartButton});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      height: 50,
      decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: colors,
            begin: Alignment.bottomRight,
            end: Alignment.topLeft,
          ),
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: Color(0xFF6078ea).withOpacity(.3),
              offset: Offset(0, 8),
              blurRadius: 8,
            )
          ]),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            isStartButton
                ? Icon(
                    Icons.play_circle_filled,
                    color: Color(0xFFB0BFDE),
                  )
                : Container(),
            SizedBox(
              width: 5,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
//                      return SubjectPage();
                      return SubjectPage();
                    },
                  ),
                );
              },
              child: Text(
                buttonTitle,
                style: TextStyle(
                  fontSize: 16,
                  color: isStartButton ? Color(0xFF7C8FB5) : Colors.white,
                  fontFamily: 'Oswald',
                  letterSpacing: 1,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
