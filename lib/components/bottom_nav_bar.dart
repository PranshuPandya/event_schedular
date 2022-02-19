import 'package:event_schedular/services/constants.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  void initState() {
    super.initState();
  }

  int _selectedIndex = 0;
  Color activeColor = kselectedItemColor;
  Color activeColorbg = const Color(0xFFDDE1FF);
  Color inactiveColor = const Color(0xFF000000);
  Color inactiveColorbg = const Color(0xFFffffff);

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              _onItemTapped(0);
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
                    Icons.home_outlined,
                    color: _selectedIndex==0? activeColor: inactiveColor,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Home",
                    style: TextStyle(color: _selectedIndex==0? activeColor: inactiveColor),
                  )
                ],
              ),
            ),
          ),
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              _onItemTapped(1);
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
                children:  [
                  Icon(
                    Icons.event,
                    color: _selectedIndex==1? activeColor: inactiveColor,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Events",
                    style: TextStyle(color: _selectedIndex==1? activeColor: inactiveColor),
                  )
                ],
              ),
            ),
          ),
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              _onItemTapped(2);
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
                children:  [
                  Icon(
                    Icons.people_alt_outlined,
                    color: _selectedIndex==2? activeColor: inactiveColor,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Clubs&Fest",
                    style: TextStyle(color: _selectedIndex==2? activeColor: inactiveColor),
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
