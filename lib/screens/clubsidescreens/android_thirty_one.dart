import 'package:event_schedular_flutter/components/rounded_button.dart';
import 'package:event_schedular_flutter/globals/text_themes.dart';
import 'package:event_schedular_flutter/screens/clubsidescreens/new_mail_screen.dart';
import 'package:event_schedular_flutter/screens/clubsidescreens/new_reminder_mail_screen.dart';
import 'package:event_schedular_flutter/screens/clubsidescreens/registration_mail_screen.dart';
import 'package:event_schedular_flutter/screens/clubsidescreens/screendemo.dart';
import 'package:event_schedular_flutter/screens/event_screen.dart';
import 'package:event_schedular_flutter/screens/homescreen.dart';
import 'package:event_schedular_flutter/services/constants.dart';
import 'package:flutter/material.dart';

class AndroidThirtyOne extends StatelessWidget {
  const AndroidThirtyOne({Key? key}) : super(key: key);
  static const String id = 'android_31';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: DefaultTabController(
          length: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                color: Color(0xffC1C1FF),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        color: Color(0xffC1C1FF),
                        child: TabBar(
                          isScrollable: true,
                          tabs: [
                            Tab(
                              text: 'New Mail',
                            ),
                            Tab(
                              text: 'New Reminder Mail',
                            ),
                          ],
                          labelColor: Color(0xff3D55BE),
                          unselectedLabelColor: Colors.white,
                          labelStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Icon(Icons.cancel_outlined,color: Colors.white,),
                    ],
                  ),
                ),
              ),
              Container(
                height: 460,
                child: TabBarView(children: [
                  NewMailScreen(),
                  NewReminderMailScreen(),
                ]),
              )
            ],
          ),
        ),
    );
  }
}
