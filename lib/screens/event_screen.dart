import 'package:event_schedular/components/eventboxes.dart';
import 'package:event_schedular/services/constants.dart';
import 'package:flutter/material.dart';

import '../components/eventboxes.dart';

class EventScreen extends StatefulWidget {
  static const String id = 'reminder_screen';

  @override
  _EventScreenState createState() => _EventScreenState();
}

class _EventScreenState extends State<EventScreen> {
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
              onTap: () {},
              child: const Icon(
                Icons.cancel,
                size: 26.0,
                color: Colors.black,
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
              'Events',
              style: TextStyle(
                fontSize: 30,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Expanded(child: AllEvents(event: "")),
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

class AllEvents extends StatelessWidget {
  const AllEvents({Key? key, this.event}) : super(key: key);
  final String? event;

  @override
  Widget build(BuildContext context) {
    const eventBox = EventBoxes(
      groupName: "Today",
      placeholder: 'secondary text',
    );
    List<EventBoxes> eventBoxes = [eventBox];

    eventBoxes.add(eventBox);
    eventBoxes.add(eventBox);
    eventBoxes.add(eventBox);
    eventBoxes.add(eventBox);
    eventBoxes.add(eventBox);
    eventBoxes.add(eventBox);
    eventBoxes.add(eventBox);
    eventBoxes.add(eventBox);
    eventBoxes.add(eventBox);
    eventBoxes.add(eventBox);
    eventBoxes.add(eventBox);
    eventBoxes.add(eventBox);
    eventBoxes.add(eventBox);
    eventBoxes.add(eventBox);
    eventBoxes.add(eventBox);
    eventBoxes.add(eventBox);
    return ListView.separated(
      separatorBuilder: (context, index) {
        return const SizedBox(
          height: 8.0,
        );
      },
      itemCount: eventBoxes.length,
      itemBuilder: (context, index) {
        return eventBoxes[index];
      },
    );
  }
}
