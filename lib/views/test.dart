// Copyright 2021 Lorena Munoz. //
// All rights reserved. Lorena Projects. //

import 'package:flutter/material.dart';

class Test extends StatelessWidget {
  final navThings = ['Home', 'Lectures', 'Assessments', 'Grades'];

  List<Widget> mainBody() {
    return navThings.map((thing) {
      return Padding(
        padding: EdgeInsets.only(left: 18),
        child: Text(
          thing,
          style: TextStyle(
            fontFamily: 'Oswald',
            color: Colors.black,
            fontSize: 40,
          ),
        ),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          ...mainBody(),
        ]..add(Container(
            color: Colors.white,
            child: Text('TESTSTSET'),
          )),
      ),
    );
  }
}
