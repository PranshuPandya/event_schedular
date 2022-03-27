import 'package:flutter/material.dart';

const kaccount = Icon(
  Icons.person_outlined,
  color: Colors.black,
);

const knotificationnone = Icon(
  Icons.notifications_none,
  color: Colors.black,
);

const kleftArrowIcon = Icon(
  Icons.arrow_back_outlined,
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

const keventBoxUpBoxDecoration = BoxDecoration(color: Colors.black, boxShadow: [
  BoxShadow(
      color: Color(0xff323247), offset: Offset(3.0, 6.0), blurRadius: 10.0),
]);
const keventBoxDownBoxDecoration = BoxDecoration(
  color: Colors.white,
);

const ksampleLoginId =
    'https://login.microsoftonline.com/850aa78d-94e1-4bc6-9cf3-8c11b530701c/oauth2/authorize?client_id=00000003-0000-0ff1-ce00-000000000000&response_mode=form_post&protectedtoken=true&response_type=code%20id_token&resource=00000003-0000-0ff1-ce00-000000000000&scope=openid&nonce=485FCFC35B4CC57DE9DB0528A177B31D42C65909032CC3B6-2448C5CFC2C8A085F50A0A87FF64A0EE1EE20C1D59897040E12AFFCC7648DB35&redirect_uri=https%3A%2F%2Fiitgoffice-my.sharepoint.com%2F_forms%2Fdefault.aspx&state=OD0w&claims=%7B%22id_token%22%3A%7B%22xms_cc%22%3A%7B%22values%22%3A%5B%22CP1%22%5D%7D%7D%7D&wsucxt=1&cobrandid=11bd8083-87e0-41b5-bb78-0bc43c8a8e8a&client-request-id=f3771aa0-3001-0000-f1cb-fdb42cbacbf3';
