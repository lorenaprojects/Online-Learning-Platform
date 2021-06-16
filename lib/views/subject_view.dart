// Copyright 2021 Lorena Munoz. //
// All rights reserved. Lorena Projects. //

import 'package:flutter/material.dart';
import 'package:flutterappapptest/views/preview_content.dart';
import 'package:flutterappapptest/views/review.dart';

class SubjectPage extends StatefulWidget {
  @override
  _SubjectPageState createState() => _SubjectPageState();
}

class _SubjectPageState extends State<SubjectPage> {
  int _currentStep = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFF23323B),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.deepOrange.withOpacity(0.5),
          onPressed: () {},
          child: Icon(Icons.question_answer),
        ),
        body: Stack(
          children: <Widget>[
            Positioned(
              left: -50,
              top: 30,
              child: Image.asset(
                'images/leafBack.png',
                width: 300,
              ),
            ),
            Positioned(
              top: 90,
              left: 260,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'BUS5BPD - Section 1',
                    style: TextStyle(
                        fontSize: 40,
                        fontFamily: 'Oswald',
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF7C8FB5)),
                  ),
                  Text(
                    'Business Information Management Systems',
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'IndieFlower',
                        color: Color(0xFF7C8FB5)),
                  ),
                ],
              ),
            ),
            Positioned(
              right: 0,
              bottom: 0,
              child: Image.asset(
                'images/leafBack2.png',
                width: 300,
              ),
            ),
            Positioned(
              left: -37,
              bottom: -38,
              child: Image.asset(
                'images/leafBack3.png',
                width: 400,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: Theme(
                data: ThemeData(
                  primaryColor: Colors.deepOrange,
                ),
                child: Stepper(
                  steps: _mySteps(),
                  currentStep: this._currentStep,
                  onStepTapped: (step) {
                    //set the currentStep to the step we pressed on
                    setState(() {
                      this._currentStep = step;
                    });
                  },
                  onStepContinue: () {
                    setState(() {
                      if (this._currentStep < this._mySteps().length - 1) {
                        this._currentStep++;
                      } else {
                        //check whether all steps complete or not
                      }
                    });
                  },
                  onStepCancel: () {
                    setState(() {
                      if (this._currentStep > 0) {
                        this._currentStep--;
                      } else {
                        this._currentStep = 0;
                      }
                    });
                  },
                  physics: BouncingScrollPhysics(),
                  type: StepperType.horizontal,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Step> _mySteps() {
    List<Step> _steps = [
      Step(
        title: Text('Step 1: Preview'),
        subtitle: Text('Watch the Video'),
        content: PreviewContent(),
        isActive: (_currentStep >= 0),
      ),
      Step(
        title: Text('Step 2: Lecture'),
        subtitle: Text('Join Zoom Classroom'),
        content: TextField(),
        isActive: (_currentStep >= 1),
      ),
      Step(
        title: Text('Step 3: Quick Review'),
        subtitle: Text('Go Through FlashCards'),
        content: ReviewPage(),
        isActive: (_currentStep >= 2),
      ),
      Step(
        title: Text('Step 4: Sample Questions'),
        subtitle: Text('Check the Question and Anwser'),
        content: TextField(),
        isActive: (_currentStep >= 3),
      ),
      Step(
        title: Text('Step 5: Quizzler'),
        subtitle: Text('Start the Quiz'),
        content: Text('anything'),
        isActive: (_currentStep >= 4),
      ),
      Step(
        title: Text('Step 6: FeedBacks'),
        subtitle: Text('Help us to improve'),
        content: Text('adhsfasdf'),
        isActive: (_currentStep >= 5),
      ),
    ];

    return _steps;
  }
}
