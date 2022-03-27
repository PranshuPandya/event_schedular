import 'dart:ffi';

import 'package:event_schedular_flutter/components/rounded_button.dart';
import 'package:event_schedular_flutter/globals/text_themes.dart';
import 'package:event_schedular_flutter/screens/clubsidescreens/registration_mail_screen.dart';
import 'package:event_schedular_flutter/screens/clubsidescreens/screendemo.dart';
import 'package:event_schedular_flutter/screens/event_screen.dart';
import 'package:event_schedular_flutter/screens/homescreen.dart';
import 'package:event_schedular_flutter/services/constants.dart';
import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
// For changing the language
// import 'package:flutter_cupertino_localizations/flutter_cupertino_localizations.dart';

class NewMailScreen extends StatelessWidget {
  const NewMailScreen({Key? key}) : super(key: key);
  static const String id = 'new_mail_screen';
  @override
  Widget build(BuildContext context) {
    var boxDecoration = BoxDecoration(color: Colors.white, boxShadow: [
      BoxShadow(
          color: Colors.black.withOpacity(0.12),
          offset: Offset(3.0, 6.0),
          blurRadius: 10.0),
    ]);

    // print(now);

    return Padding(
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
                            SizedBox(
                              height: 20,
                              width: 100,
                              child: Material(
                                elevation: 2.0,
                                color: Color(0xffFEFBFF),
                                borderRadius: BorderRadius.circular(3.5),
                                child: MaterialButton(
                                  onPressed: () {},
                                  minWidth: 55.0,
                                  height: 20.0,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'registerd users',
                                        style: TextStyle(
                                          color: Color(0xffAAA8AB),
                                          fontSize: 8.0,
                                        ),
                                      ),
                                      Icon(Icons.cancel_outlined,
                                          color: Color(0xffAAA8AB), size: 10.0),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            MyFonts().regmailsubheader(
                                "jsaidcfjhasdoi2@gmail.com", Color(0xff7A828A)),
                          ],
                        ),
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
                        MyFonts().regmailheader(
                          "When to send the new mail?",
                          Color(0xff76767F),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                MyFonts()
                                    .regmailheader("Time", Color(0xff425466)),
                                SizedBox(
                                  height: 4,
                                ),
                                Container(
                                  height: 44,
                                  width: 100,
                                  child: Material(
                                    elevation: 4.0,
                                    color: Color(0xffffffff),
                                    borderRadius: BorderRadius.circular(3.5),
                                    // child: MaterialButton(
                                    //   onPressed: () {
                                    //     BasicDateField();
                                    //   },
                                    //   minWidth: 55.0,
                                    //   height: 20.0,
                                    //   child: Text(
                                    //     'Time will come',
                                    //     style: TextStyle(
                                    //       color: Color(0xffAAA8AB),
                                    //       fontSize: 8.0,
                                    //     ),
                                    //   ),
                                    // ),
                                    child: DateTimeField(
                                      format: DateFormat("hh:mm a"),
                                      onShowPicker:
                                          (context, currentValue) async {
                                        final TimeOfDay? time =
                                            await showTimePicker(
                                          context: context,
                                          initialTime: TimeOfDay.fromDateTime(
                                              currentValue ?? DateTime.now()),
                                          builder: (context, child) => Theme(
                                            data: ThemeData().copyWith(
                                              colorScheme: ColorScheme.light(
                                                primary: Color(0xff3D55BE),
                                                onPrimary: Color(0xffffffff),
                                                primaryVariant:
                                                    Color(0xff3700b3),
                                                // surface: Color(0x001F1F1F),
                                                // onSurface:Color(0xffffffff),
                                                onBackground: Color(0xffF1EFFF),
                                                background: Colors.green,
                                              ),
                                              dialogBackgroundColor:
                                                  Colors.green,
                                            ),
                                            // data: ThemeData().copyWith(
                                            //   backgroundColor: Colors.green,
                                            // ),
                                            child: child!,
                                            // data
                                          ),
                                        );
                                        return time == null
                                            ? null
                                            : DateTimeField.convert(time);
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 15, bottom: 15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  MyFonts()
                                      .regmailheader("Date", Color(0xff425466)),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Container(
                                    height: 44,
                                    width: 127,
                                    child: Material(
                                      elevation: 4.0,
                                      color: Color(0xffffffff),
                                      borderRadius: BorderRadius.circular(3.5),
                                      // child: MaterialButton(
                                      //   onPressed: () {},
                                      //   minWidth: 55.0,
                                      //   height: 20.0,
                                      //   child: Text(
                                      //     'Date will come',
                                      //     style: TextStyle(
                                      //       color: Color(0xffAAA8AB),
                                      //       fontSize: 8.0,
                                      //     ),
                                      //   ),
                                      // ),
                                      child: DateTimeField(
                                        format: DateFormat("dd-MM-yyyy"),
                                        onShowPicker: (context, currentValue) {
                                          return showDatePicker(
                                              builder: (context, child) =>
                                                  Theme(
                                                    data: ThemeData().copyWith(
                                                      colorScheme:
                                                          ColorScheme.dark(
                                                        primary:
                                                            Color(0xff3D55BE),
                                                        onPrimary:
                                                            Color(0xffffffff),
                                                        primaryVariant:
                                                            Color(0xff000000),
                                                        surface:
                                                            Color(0x001F1F1F),
                                                        onSurface:
                                                            Color(0xff000000),
                                                      ),
                                                      dialogBackgroundColor:
                                                          Color(0xffEFEFFF),
                                                    ),
                                                    child: child!,
                                                  ),
                                              context: context,
                                              firstDate: DateTime(1900),
                                              initialDate: currentValue ??
                                                  DateTime.now(),
                                              lastDate: DateTime(2100));
                                        },
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
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
    );
  }
}

class BasicDateField extends StatelessWidget {
  final format = DateFormat("dd-MM-yyyy");
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      // Text('Basic date field (${format.pattern})'),
      DateTimeField(
        format: format,
        onShowPicker: (context, currentValue) {
          return showDatePicker(
              builder: (context, child) => Theme(
                    data: ThemeData().copyWith(
                      colorScheme: ColorScheme.dark(
                        primary: Color(0xff3D55BE),
                        onPrimary: Color(0xffffffff),
                        primaryVariant: Color(0xff000000),
                        surface: Color(0x001F1F1F),
                        onSurface: Color(0xff000000),
                      ),
                      dialogBackgroundColor: Color(0xffEFEFFF),
                    ),
                    child: child!,
                  ),
              context: context,
              firstDate: DateTime(1900),
              initialDate: currentValue ?? DateTime.now(),
              lastDate: DateTime(2100));
        },
      ),
    ]);
  }
}

class BasicTimeField extends StatelessWidget {
  final format = DateFormat("hh:mm a");
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Text('Basic time field (${format.pattern})'),
      DateTimeField(
        format: format,
        onShowPicker: (context, currentValue) async {
          final TimeOfDay? time = await showTimePicker(
            context: context,
            initialTime: TimeOfDay.fromDateTime(currentValue ?? DateTime.now()),
            builder: (context, child) => Theme(
              data: ThemeData().copyWith(
                colorScheme: ColorScheme.light(
                  primary: Color(0xff3D55BE),
                  onPrimary: Color(0xffffffff),
                  primaryVariant: Color(0xff3700b3),
                  // surface: Color(0x001F1F1F),
                  // onSurface:Color(0xffffffff),
                  onBackground: Color(0xffF1EFFF),
                  background: Colors.green,
                ),
                dialogBackgroundColor: Colors.green,
              ),
              // data: ThemeData().copyWith(
              //   backgroundColor: Colors.green,
              // ),
              child: child!,
              // data
            ),
          );
          return time == null ? null : DateTimeField.convert(time);
        },
      ),
    ]);
  }
}
