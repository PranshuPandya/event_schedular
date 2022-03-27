import 'package:event_schedular_flutter/screens/event_screen.dart';
import 'package:event_schedular_flutter/screens/homescreen.dart';
import 'package:event_schedular_flutter/services/constants.dart';
import 'package:flutter/material.dart';

class BottomNavBarClubFest extends StatefulWidget {
  const BottomNavBarClubFest({required this.calledfrom, Key? key}) : super(key: key);
  final int calledfrom;

  @override
  _BottomNavBarClubFestState createState() => _BottomNavBarClubFestState();
}

class _BottomNavBarClubFestState extends State<BottomNavBarClubFest> {
  @override
  void initState() {
    super.initState();
  }

  late final int _selectedIndex = widget.calledfrom;
  Color activeColor = kselectedItemColor;
  Color activeColorbg = const Color(0xFFDDE1FF);
  Color inactiveColor = const Color(0xFF000000);
  Color inactiveColorbg = const Color(0xFFffffff);

  // void _onItemTapped(int index) {
  //   setState(() {
  //     _selectedIndex = index;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              // _onItemTapped(0);
              if (widget.calledfrom!= 0) {
                Navigator.pop(context);
              }
            },
            child: Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.only(top: 14, bottom: 14),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: _selectedIndex == 0 ? activeColorbg : null,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.event,
                    color: _selectedIndex == 0 ? activeColor : inactiveColor,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Event",
                    style: TextStyle(
                        color:
                            _selectedIndex == 0 ? activeColor : inactiveColor),
                  )
                ],
              ),
            ),
          ),
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              // _onItemTapped(1);
              if (_selectedIndex == 0) {
                Navigator.pushNamed(context, EventScreen.id);
              }
            },
            child: Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: _selectedIndex == 1 ? activeColorbg : null,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.bar_chart,
                    color: _selectedIndex == 1 ? activeColor : inactiveColor,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Stats",
                    style: TextStyle(
                        color:
                            _selectedIndex == 1 ? activeColor : inactiveColor),
                  )
                ],
              ),
            ),
          ),
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              // _onItemTapped(2);
            },
            child: Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: _selectedIndex == 2 ? activeColorbg : null,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.insights,
                    color: _selectedIndex == 2 ? activeColor : inactiveColor,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Insights",
                    style: TextStyle(
                        color:
                            _selectedIndex == 2 ? activeColor : inactiveColor),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
