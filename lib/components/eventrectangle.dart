import 'package:event_schedular/services/constants.dart';
import 'package:flutter/material.dart';

class EventRectangle extends StatelessWidget {
  const EventRectangle(
      {Key? key, required this.groupName, required this.placeholder})
      : super(key: key);
  final String groupName;
  final String placeholder;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(
        //       builder: (context) => GroupMemberScreen(
        //             groupName: groupName,
        //           )),
        // );
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16.0),
        child: Container(
          decoration: keventRectangleBoxDecoration,
          width: 328.0,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  padding: const EdgeInsets.all(4.0),
                  height: 40.0,
                  width: 40.0,
                  decoration: BoxDecoration(
                    color: const Color(0Xff3D55BE),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Center(
                    child: Text(
                      groupName[0].toUpperCase(),
                      style:
                          const TextStyle(fontSize: 20.0, color: Colors.white),
                    ),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.only(
                      start: 16.0,
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
                        start: 16.0, end: 10.0, bottom: 12.0),
                    child: Text(
                      placeholder,
                      style: const TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
