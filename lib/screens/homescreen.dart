import 'package:event_schedular/services/constants.dart';
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
            onPressed: () {
              // Scaffold.of(context).openDrawer();
            },
            icon: kaccount,
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {},
              child: const Icon(
                Icons.notifications,
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
      bottomNavigationBar: BottomNavigationBar(
          items: kbottomNavigationBarItemlist,
          currentIndex: _selectedIndex,
          selectedItemColor: kselectedItemColor,
          onTap: _onItemTapped,
          selectedIconTheme: kselectedIconThemeData),
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

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}

class Events extends StatelessWidget {
  const Events({Key? key, this.event}) : super(key: key);
  final String? event;

  @override
  Widget build(BuildContext context) {
    // print(userName.toString());
    // return StreamBuilder<QuerySnapshot>(
    //   stream: groups.where('users', arrayContains: userName).snapshots(),
    //   builder: (context, snapshot) {
    const eventRectangle = EventRectangle(
      groupName: "Pranshu",
      placeholder: 'Placeholder',
    );
    List<EventRectangle> eventRectangles = [eventRectangle];
    //     if (!snapshot.hasData) {
    //       return Center(
    //         child: CircularProgressIndicator(
    //           backgroundColor: Colors.grey,
    //         ),
    //       );
    //     }
    //     final groups = snapshot.data!.docs;
    //     for (var group in groups) {
    //       final groupName = group['groupName'];
    //       final groupRectangle = GroupRectangle(groupName: groupName);
    eventRectangles.add(eventRectangle);
    eventRectangles.add(eventRectangle);
    eventRectangles.add(eventRectangle);
    eventRectangles.add(eventRectangle);
    eventRectangles.add(eventRectangle);
    eventRectangles.add(eventRectangle);
    eventRectangles.add(eventRectangle);
    eventRectangles.add(eventRectangle);

    //     }

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
    //     },
    //   );
  }
}
