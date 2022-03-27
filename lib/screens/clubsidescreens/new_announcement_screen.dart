import 'package:event_schedular_flutter/components/rounded_button.dart';
import 'package:event_schedular_flutter/globals/text_themes.dart';
import 'package:event_schedular_flutter/screens/clubsidescreens/registration_mail_screen.dart';
import 'package:event_schedular_flutter/screens/clubsidescreens/screendemo.dart';
import 'package:event_schedular_flutter/screens/event_screen.dart';
import 'package:event_schedular_flutter/screens/homescreen.dart';
import 'package:event_schedular_flutter/services/constants.dart';
import 'package:flutter/material.dart';

class NewAnnouncementScreen extends StatelessWidget {
  const NewAnnouncementScreen({Key? key}) : super(key: key);

  static const String id = 'new_announcement_screen';
  @override
  Widget build(BuildContext context) {
    var boxDecoration = BoxDecoration(color: Colors.white, boxShadow: [
      BoxShadow(
          color: Colors.black.withOpacity(0.12),
          offset: Offset(3.0, 6.0),
          blurRadius: 10.0),
    ]);
    return Scaffold(
        appBar: AppBar(
          title: const Text('New Announcement'),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {},
                child: Icon(Icons.cancel_outlined),
              ),
            ),
          ],
          backgroundColor: Color(0xffC1C1FF),
        ),
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
                      padding: const EdgeInsets.only(
                          left: 16.0, top: 12.0, bottom: 8.0),
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
                                              color: Color(0xffAAA8AB),
                                              size: 10.0),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                MyFonts().regmailsubheader(
                                    "jsaidcfjhasdoi2@gmail.com",
                                    Color(0xff7A828A)),
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
                      padding: const EdgeInsets.only(
                          left: 16.0, top: 12.0, bottom: 8.0),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            MyFonts()
                                .regmailheader("Subject", Color(0xff757575)),
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
                      padding: const EdgeInsets.only(
                          left: 16.0, top: 12.0, bottom: 8.0),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            MyFonts()
                                .regmailheader("Body Text", Color(0xff757575)),
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
                      padding: const EdgeInsets.only(
                          left: 16.0, top: 12.0, bottom: 8.0),
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
                                    MyFonts().regmailheader(
                                        "Time", Color(0xff425466)),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Container(
                                      height: 44,
                                      width: 100,
                                      child: Material(
                                        elevation: 4.0,
                                        color: Color(0xffffffff),
                                        borderRadius:
                                            BorderRadius.circular(3.5),
                                        child: MaterialButton(
                                          onPressed: () {},
                                          minWidth: 55.0,
                                          height: 20.0,
                                          child: Text(
                                            'Time will come',
                                            style: TextStyle(
                                              color: Color(0xffAAA8AB),
                                              fontSize: 8.0,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      right: 15, bottom: 15),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      MyFonts().regmailheader(
                                          "Date", Color(0xff425466)),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Container(
                                        height: 44,
                                        width: 127,
                                        child: Material(
                                          elevation: 4.0,
                                          color: Color(0xffffffff),
                                          borderRadius:
                                              BorderRadius.circular(3.5),
                                          child: MaterialButton(
                                            onPressed: () {},
                                            minWidth: 55.0,
                                            height: 20.0,
                                            child: Text(
                                              'Date will come',
                                              style: TextStyle(
                                                color: Color(0xffAAA8AB),
                                                fontSize: 8.0,
                                              ),
                                            ),
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
        ));
  }
}
