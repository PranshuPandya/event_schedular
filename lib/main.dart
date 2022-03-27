import 'package:event_schedular_flutter/components/datetime.dart';
import 'package:event_schedular_flutter/components/overlaylearn.dart';
import 'package:event_schedular_flutter/screens/clubsidescreens/Android_twenty_six.dart';
import 'package:event_schedular_flutter/screens/clubsidescreens/android_thirty.dart';
import 'package:event_schedular_flutter/screens/clubsidescreens/android_thirty_one.dart';
import 'package:event_schedular_flutter/screens/clubsidescreens/new_announcement_screen.dart';
import 'package:event_schedular_flutter/screens/clubsidescreens/new_mail_screen.dart';
import 'package:event_schedular_flutter/screens/event_screen.dart';
import 'package:event_schedular_flutter/screens/homescreen.dart';
import 'package:event_schedular_flutter/screens/reminders_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(EventSchedular());
}

class EventSchedular extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute:AndroidTwentySix.id,
      routes: {
        HomeScreen.id: (context) => HomeScreen(),
        ReminderScreen.id: (context) => ReminderScreen(),
        EventScreen.id: (context) => EventScreen(),
        AndroidThirty.id: (context) => const AndroidThirty(),
        AndroidTwentySix.id: (context) => const AndroidTwentySix(),
        AndroidThirtyOne.id: (context) => const AndroidThirtyOne(),
        DateTimeLearn.id: (context) =>  DateTimeLearn(),
        NewAnnouncementScreen.id: (context) => NewAnnouncementScreen(),
        NewMailScreen.id: (context) => NewMailScreen(),
        Example2.id: (context) => Example2(),
      },
    );
  }
}
