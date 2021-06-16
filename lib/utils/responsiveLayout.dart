// Copyright 2021 Lorena Munoz. //
// All rights reserved. Lorena Projects. //

import 'package:flutter/material.dart';

//....ResponsibleLayout for Website....//
class ResponsiveLayout extends StatelessWidget {
  final Widget largeScreen;
  final Widget mediumScreen;
  final Widget smallScreen;

  const ResponsiveLayout(
      {Key key,
      @required this.largeScreen,
      this.mediumScreen,
      this.smallScreen})
      : super(key: key);

  static bool isSmallScreen(BuildContext context) {
    return MediaQuery.of(context).size.width < 800;
  }

  static bool isMediumScreen(BuildContext context) {
    return MediaQuery.of(context).size.width > 800 &&
        MediaQuery.of(context).size.width < 1300;
  }

  static bool isLargeScreen(BuildContext context) {
    return MediaQuery.of(context).size.width >= 1300;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= 1300) {
          print('LargeScreen Now!');
          return largeScreen;
        } else if (constraints.maxWidth < 1300 && constraints.maxWidth > 800) {
          print('MiddleScreen yo!');
          return mediumScreen ?? largeScreen;
        } else {
          print('SmallScreen hey!');
          return smallScreen ?? largeScreen;
        }
      },
    );
  }
}
