import 'package:flutter/material.dart';
// Copyright 2021 Lorena Munoz. //
// All rights reserved. Lorena Projects. //

class QuizCard extends StatefulWidget {
  int quizNumber = 0;
  List<String> _toolNames = ['Dashboard', 'Data Mining', 'OLTP'];

  @override
  _QuizCardState createState() => _QuizCardState();
}

class _QuizCardState extends State<QuizCard> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            color: Color(0xFFeef9f0),
            boxShadow: [
              BoxShadow(
                  color: Colors.black45, offset: Offset(3, 6), blurRadius: 10),
            ],
            borderRadius: BorderRadius.circular(20),
          ),
          width: 150,
          height: 240,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: Image.asset(
                  'images/tool${widget.quizNumber + 1}.png',
                  width: 120,
                ),
              ),
              Text(
                widget._toolNames[widget.quizNumber],
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'PlayfairDisplay',
                  color: Colors.black26,
                ),
              ),
              Container(
                width: 100,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.green.shade200,
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black45,
                        offset: Offset(3, 6),
                        blurRadius: 10),
                  ],
                ),
                child: Center(
                  child: Text(
                    'LEARN MORE',
                    style: TextStyle(
                        fontFamily: 'Oswald',
                        fontSize: 10,
                        color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: 4,
              ),
            ],
          ),
        ),
        Positioned(
          top: 120,
          right: 0,
          child: GestureDetector(
            onTap: () {
              setState(() {
                if (widget.quizNumber < widget._toolNames.length - 1) {
                  widget.quizNumber++;
                } else {
                  widget.quizNumber = 0;
                }
              });
            },
            child: Container(
              child: Icon(
                Icons.keyboard_arrow_right,
                color: Colors.black45,
              ),
              width: 30,
              height: 30,
              color: Colors.transparent,
            ),
          ),
        ),
      ],
    );
  }
}
