import 'package:event_schedular_flutter/components/calendar.dart';
import 'package:event_schedular_flutter/components/rounded_button.dart';
import 'package:event_schedular_flutter/services/constants.dart';
import 'package:flutter/material.dart';

class ScheduledEmailsBoxes extends StatelessWidget {
  const ScheduledEmailsBoxes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: keventBoxDownBoxDecoration,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 16.0),
              child: Text(
                ksampleLoginId,
                style: TextStyle(
                  fontSize: 13.0,
                  fontFamily: 'Roboto',
                  color: Color(0xFF7A828A),
                ),
                maxLines: 2,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10.0, top: 20.0, bottom: 20.0,left: 16.0),
            child: Container(
              height: 27,
              width: 55,
              child: Material(
                elevation: 2.0,
                color: Color(0xffEB5757),
                borderRadius: BorderRadius.circular(20),
                child: MaterialButton(
                  onPressed: () {},
                  minWidth: 35.0,
                  height: 20.0,
                  child: Icon(
                    Icons.delete,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
