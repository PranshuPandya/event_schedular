import 'package:event_schedular_flutter/components/bottom_nav_bar.dart';
import 'package:event_schedular_flutter/screens/reminders_screen.dart';
import 'package:event_schedular_flutter/services/constants.dart';
import 'package:flutter/material.dart';

import '../components/eventrectangle.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
                Navigator.pushNamed(context, ReminderScreen.id);
              },
              child: knotificationnone,
            ),
          ),
        ],
        title: RichText(
          text: ktextSpanOne,
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      bottomNavigationBar: const BottomNavBar(calledfrom:0),
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
          Expanded(child: Events(event: "")),
        ],
      ),
    );
  }
}

class Events extends StatelessWidget {
  const Events({Key? key, this.event}) : super(key: key);
  final String? event;

  @override
  Widget build(BuildContext context) {
    const eventRectangle = EventRectangle(
      groupName: "Pranshu",
      placeholder: 'Placeholder',
    );
    List<EventRectangle> eventRectangles = [eventRectangle];

    eventRectangles.add(eventRectangle);
    eventRectangles.add(eventRectangle);
    eventRectangles.add(eventRectangle);
    eventRectangles.add(eventRectangle);
    eventRectangles.add(eventRectangle);
    eventRectangles.add(eventRectangle);
    eventRectangles.add(eventRectangle);
    eventRectangles.add(eventRectangle);

    return ListView.separated(
      separatorBuilder: (context, index) {
        return const SizedBox(
          height: 8.0,
        );
      },
      itemCount: eventRectangles.length,
      itemBuilder: (context, index) {
        return eventRectangles[index];
      },
    );
  }
}
