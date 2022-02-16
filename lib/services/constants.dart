import 'package:flutter/material.dart';

const kaccount = Icon(
  Icons.account_circle_rounded,
  size: 37.0,
  color: Colors.black,
);
const ktextSpanOne = TextSpan(
  children: [
    TextSpan(
      text: 'One',
      style: TextStyle(
        color: Color(0xff649CFF),
        fontSize: 22,
      ),
    ),
    TextSpan(
      text: '.',
      style: TextStyle(
        color: Color(0xffFFC907),
        fontSize: 22,
      ),
    )
  ],
);

const kselectedItemColor = Color(0xff3D55BE);

const kselectedIconThemeData = IconThemeData(
  color: kselectedItemColor,
  size: 40,
);

const kbottomNavigationBarItemlist = [
  BottomNavigationBarItem(
    icon: Icon(Icons.home),
    label: 'Home',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.event),
    label: 'Events',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.people),
    label: 'Clubs&Fests',
  ),
];

const keventRectangleBoxDecoration =
    BoxDecoration(color: Colors.white, boxShadow: [
  BoxShadow(
      color: Color(0xff323247), offset: Offset(3.0, 6.0), blurRadius: 10.0),
]);

const keventBoxUpBoxDecoration =
    BoxDecoration(color: Colors.black, boxShadow: [
  BoxShadow(
      color: Color(0xff323247), offset: Offset(3.0, 6.0), blurRadius: 10.0),
]);
const keventBoxDownBoxDecoration =
    BoxDecoration(color: Colors.white, );