// Copyright 2021 Lorena Munoz. //
// All rights reserved. Lorena Projects. //

import 'package:flutter/material.dart';

class ShortCutIcon extends StatelessWidget {
  final IconData ionc;

  ShortCutIcon({this.ionc});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      margin: EdgeInsets.only(left: 20),
      decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              offset: Offset(0, 10),
              blurRadius: 10,
            ),
          ]),
      child: Center(
        child: Icon(
          ionc,
          color: Color(0xFFD1DBEA),
        ),
      ),
    );
  }
}
