import 'package:flutter/material.dart';

class AppTheme {
  static const TextStyle kHeading = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.25,
  );

  static const TextStyle kBody = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.25,
  );
  static const TextStyle kPercent = TextStyle(
    fontSize: 12,
    color: Colors.black,
    fontWeight: FontWeight.w200,
    letterSpacing: 0.25,
  );
  static const TextStyle kDay = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w300,
    letterSpacing: 0.25,
  );

  List<BoxShadow> getBoxShadow() {
    List<BoxShadow> list = [
      BoxShadow(
        color: Colors.grey.shade200,
        offset: const Offset(
          1.0,
          1.0,
        ),
        blurRadius: 4.0,
        spreadRadius: 1.0,
      ), //BoxShadow
      const BoxShadow(
        color: Colors.white,
        offset: Offset(0.0, 0.0),
        blurRadius: 0.0,
        spreadRadius: 0.0,
      ), //BoxShadow
    ];
    return list;
  }
}
