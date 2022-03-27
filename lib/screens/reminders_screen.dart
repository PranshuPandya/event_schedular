import 'package:event_schedular_flutter/services/constants.dart';
import 'package:flutter/material.dart';

import '../components/reminderrectangle.dart';

class ReminderScreen extends StatefulWidget {
  static const String id = 'reminder_screen';

  @override
  _ReminderScreenState createState() => _ReminderScreenState();
}

class _ReminderScreenState extends State<ReminderScreen> {
  @override
  void initState() {
    super.initState();
  }

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (context) => IconButton(
            onPressed: () {},
            icon: kaccount,
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(
                Icons.cancel_outlined,
                size: 26.0,
                color: Color(0xffdd3730),
              ),
            ),
          ),
        ],
        title: RichText(
          text: ktextSpanOne,
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Padding(
            padding: EdgeInsets.only(top: 18.0, left: 24.0),
            child: Text(
              'REMINDERS',
              style: TextStyle(
                fontSize: 30,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Expanded(child: Reminders(event: "")),
        ],
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}

class Reminders extends StatelessWidget {
  const Reminders({Key? key, this.event}) : super(key: key);
  final String? event;

  @override
  Widget build(BuildContext context) {
    const reminderRectangle = ReminderRectangle(
      groupName: "Subtitle 1",
      placeholder: 'secondary text',
    );
    List<ReminderRectangle> reminderRectangles = [reminderRectangle];

    reminderRectangles.add(reminderRectangle);
    reminderRectangles.add(reminderRectangle);
    reminderRectangles.add(reminderRectangle);
    reminderRectangles.add(reminderRectangle);
    reminderRectangles.add(reminderRectangle);
    reminderRectangles.add(reminderRectangle);
    reminderRectangles.add(reminderRectangle);
    reminderRectangles.add(reminderRectangle);
    reminderRectangles.add(reminderRectangle);
    reminderRectangles.add(reminderRectangle);
    reminderRectangles.add(reminderRectangle);
    reminderRectangles.add(reminderRectangle);
    reminderRectangles.add(reminderRectangle);
    reminderRectangles.add(reminderRectangle);
    reminderRectangles.add(reminderRectangle);
    reminderRectangles.add(reminderRectangle);
    return ListView.separated(
      separatorBuilder: (context, index) {
        return const SizedBox(
          height: 8.0,
        );
      },
      itemCount: reminderRectangles.length,
      itemBuilder: (context, index) {
        return reminderRectangles[index];
      },
    );
  }
}
