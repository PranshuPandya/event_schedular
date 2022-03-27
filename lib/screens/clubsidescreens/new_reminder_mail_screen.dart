import 'dart:ffi';

import 'package:event_schedular_flutter/components/rounded_button.dart';
import 'package:event_schedular_flutter/globals/text_themes.dart';
import 'package:event_schedular_flutter/screens/clubsidescreens/registration_mail_screen.dart';
import 'package:event_schedular_flutter/screens/clubsidescreens/screendemo.dart';
import 'package:event_schedular_flutter/screens/event_screen.dart';
import 'package:event_schedular_flutter/screens/homescreen.dart';
import 'package:event_schedular_flutter/services/constants.dart';
import 'package:flutter/material.dart';

class NewReminderMailScreen extends StatelessWidget {
  const NewReminderMailScreen({Key? key}) : super(key: key);
  static const String id = 'new_reminder_mail_screen';
  @override
  Widget build(BuildContext context) {
    var boxDecoration = BoxDecoration(color: Colors.white, boxShadow: [
      BoxShadow(
          color: Colors.black.withOpacity(0.12),
          offset: Offset(3.0, 6.0),
          blurRadius: 10.0),
    ]);
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(right: 16.0, left: 16.0, top: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: boxDecoration,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(6.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: keventBoxDownBoxDecoration,
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 16.0, top: 12.0, bottom: 8.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MyFonts()
                            .regmailheader("Recipients", Color(0xff757575)),
                        SizedBox(
                          height: 4,
                        ),
                        Row(
                          children: [
                            RegisteredUsersButton(text: 'registerd users'),
                            SizedBox(
                              width: 10,
                            ),
                            RegisteredUsersButton(text: 'invited users'),
                          ],
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        MyFonts().regmailsubheader(
                            "jsaidcfjhasdoi2@gmail.com", Color(0xff7A828A)),
                      ]),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 12.0,
          ),
          Container(
            decoration: boxDecoration,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(6.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: keventBoxDownBoxDecoration,
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 16.0, top: 12.0, bottom: 8.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MyFonts().regmailheader("Subject", Color(0xff757575)),
                        MyFonts().regmailsubheader(
                            "Registration confirmerd for EVENT NAME",
                            Color(0xff757575)),
                      ]),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 12.0,
          ),
          Container(
            decoration: boxDecoration,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(6.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: keventBoxDownBoxDecoration,
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 16.0, top: 12.0, bottom: 8.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MyFonts().regmailheader("Body Text", Color(0xff757575)),
                        MyFonts().regmailsubheader(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididuntderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                            Color(0xff757575)),
                      ]),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          SizedBox(
            width: 100.0,
            child: Material(
              elevation: 2.0,
              color: Color(0xff3D55BE),
              borderRadius: BorderRadius.circular(100.0),
              child: MaterialButton(
                onPressed: () {},
                minWidth: 50.0,
                height: 25.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Icon(
                      Icons.send,
                      color: Colors.white,
                      size: 18,
                    ),
                    Text(
                      'Send',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}

class RegisteredUsersButton extends StatelessWidget {
  RegisteredUsersButton({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String? text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20,
      child: Material(
        elevation: 2.0,
        color: Color(0xffFEFBFF),
        borderRadius: BorderRadius.circular(3.5),
        child: MaterialButton(
          onPressed: () {},
          minWidth: 55.0,
          height: 20.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                text!,
                style: TextStyle(
                  color: Color(0xffAAA8AB),
                  fontSize: 8.0,
                ),
              ),
              Icon(Icons.cancel_outlined, color: Color(0xffAAA8AB), size: 10.0),
            ],
          ),
        ),
      ),
    );
  }
}
