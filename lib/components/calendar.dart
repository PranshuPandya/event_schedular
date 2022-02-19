import 'package:flutter/material.dart';

class Calendar extends StatelessWidget {
  const Calendar({Key? key, required this.color}) : super(key: key);

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
            decoration: BoxDecoration(
                border: Border.all(color: color, width: 2),
                borderRadius: BorderRadius.circular(5)),
            child: Column(
              children: [
                Container(
                  child: Text('Dec',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: color,
                          fontSize: 8,
                          letterSpacing: 0.5)),
                ),
                Container(
                  child: Text('10',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: color,
                          fontSize: 24,
                          letterSpacing: 0.5)),
                  decoration: BoxDecoration(
                      border: Border(top: BorderSide(color: color, width: 2))),
                ),
              ],
            )),
      ],
    );
  }
}
