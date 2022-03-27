import 'package:flutter/material.dart';

class MyFonts {
  Text heading(text, color) {
    return Text(
      text,
      style: const TextStyle(
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w500,
        height: 2,
        fontSize: 16,
        letterSpacing: 2.0,
      ),
    );
  }

  Text header(text, color) {
    return Text(text,
        style: const TextStyle(
            fontWeight: FontWeight.w500,
            fontFamily: 'Roboto',
            fontSize: 14,
            letterSpacing: 0.5));
  }

  Text subheader(text, color) {
    return Text(text,
        style: const TextStyle(
            fontFamily: 'Roboto',
            height: 1.3,
            fontSize: 12,
            letterSpacing: 0.5));
  }

  Text togglebutton(text, color) {
    return Text(
      text,
      style: const TextStyle(
          fontSize: 10.0, fontFamily: 'Inter', fontWeight: FontWeight.w600),
    );
  }

  Text regmailheader(text, color) {
    return Text(
      text,
      style: const TextStyle(
          fontSize: 14.0, fontFamily: 'Roboto', fontWeight: FontWeight.w500),
    );
  }

  Text regmailsubheader(text, color) {
    return Text(
      text,
      style: const TextStyle(
          fontSize: 12.0, fontFamily: 'Roboto', fontWeight: FontWeight.w400),
    );
  }
}
