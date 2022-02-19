import 'package:event_schedular/components/calendar.dart';
import 'package:event_schedular/components/rounded_button.dart';
import 'package:event_schedular/services/constants.dart';
import 'package:flutter/material.dart';

class EventBoxes extends StatelessWidget {
  const EventBoxes(
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 16,
              right: 16,
              top: 16,
            ),
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
              child: Container(
                decoration: keventBoxUpBoxDecoration,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 10.0, top: 21.0, bottom: 21.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image.asset(
                          'images/demo1.png',
                          height: 46.0,
                          width: 46.0,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.only(
                        end: 10.0,
                        top: 34.0,
                        bottom: 34.0,
                      ),
                      child: Text(
                        groupName,
                        style: const TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right:10.0),
                      child: Calendar(color: Color(0xffDD3730),)
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 16,
              right: 16,
            ),
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
              child: Container(
                constraints:
                    BoxConstraints(minWidth: MediaQuery.of(context).size.width),
                decoration: keventBoxDownBoxDecoration,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsetsDirectional.only(
                        start: 12.0,
                        end: 95.5,
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
                          start: 12.0, end: 95.5, bottom: 7.0),
                      child: Text(
                        placeholder,
                        style: const TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsetsDirectional.only(
                        start: 12.0,
                        end: 12,
                      ),
                      child: Text(
                        "fasdjklfjsadkfjgdkfljgkldfngkladfngdkfadkslfdkfjdfkljgkfdjgklsdfjgkdfssjglksdfjglksdsfasfdsfgsfaafd",
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                              padding: const EdgeInsets.only(
                                  bottom: 14, left: 12, top: 10),
                              child: RoundedButton(
                                text: 'Pay',
                                onPressed: () {},
                                colour: Color(0xff6FCF97),
                                textColor: Colors.white,
                                fontSize: 14,
                                radius: 8,
                                height: 36,
                                width: 66,
                              )),
                          Padding(
                              padding: const EdgeInsets.only(
                                  bottom: 14, right: 12, top: 10),
                              child: RoundedButton(
                                text: 'Undo RSVP',
                                onPressed: () {},
                                colour: Color(0xff3D55BE),
                                textColor: Colors.white,
                                fontSize: 14,
                                radius: 100,
                                height: 40,
                                width: 121,
                              )),
                        ])
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
