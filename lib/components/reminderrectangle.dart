import 'package:event_schedular/services/constants.dart';
import 'package:flutter/material.dart';

class ReminderRectangle extends StatelessWidget {
  const ReminderRectangle(
      {Key? key, required this.groupName, required this.placeholder})
      : super(key: key);
  final String groupName;
  final String placeholder;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16.0),
        child: Container(
          decoration: keventRectangleBoxDecoration,
          width: 100.0,
          child: Row(
            children: [
              Padding(
                padding:
                    const EdgeInsets.only(left: 13.0, top: 8.0, bottom: 8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    'images/demo.png',
                    height: 48.0,
                    width: 86.0,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.only(
                      start: 23.0,
                      end: 10.0,
                      top: 12.0,
                    ),
                    child: Text(
                      groupName,
                      style: const TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.only(
                        start: 23.0, end: 10.0, bottom: 12.0),
                    child: Text(
                      placeholder,
                      style: const TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                ],
              ),
              const Spacer(flex: 10,),
              const Icon(Icons.notification_important_rounded,
                  color: Colors.black),
            ],
          ),
        ),
      ),
    );
  }
}
