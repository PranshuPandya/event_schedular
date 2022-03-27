import 'package:event_schedular_flutter/components/announcementboxes.dart';
import 'package:event_schedular_flutter/components/bottom_nav_bar.dart';
import 'package:event_schedular_flutter/components/bottom_nav_bar_clubfest.dart';
import 'package:event_schedular_flutter/components/scheduled_emails_boxes.dart';
import 'package:event_schedular_flutter/services/constants.dart';
import 'package:flutter/material.dart';

class AnnouncementScreen extends StatelessWidget {
  const AnnouncementScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 16, top: 15, right: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Announcements',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(
                  height: 35,
                  width: 80,
                  child: Material(
                    elevation: 2.0,
                    color: Color(0xff3D55BE),
                    borderRadius: BorderRadius.circular(100.0),
                    child: MaterialButton(
                      onPressed: () {},
                      minWidth: 50.0,
                      height: 25.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 18,
                          ),
                          Text(
                            'New',
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            const Expanded(
              child: AllAnnouncements(),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBarClubFest(
        calledfrom: 0,
      ),
    );
  }
}

class AllAnnouncements extends StatelessWidget {
  const AllAnnouncements({Key? key, this.event}) : super(key: key);
  final String? event;

  @override
  Widget build(BuildContext context) {
    const announcementBox = AnnouncementBoxes();

    List<AnnouncementBoxes> announcementBoxes = [announcementBox];

    announcementBoxes.add(announcementBox);
    announcementBoxes.add(announcementBox);
    announcementBoxes.add(announcementBox);
    announcementBoxes.add(announcementBox);
    announcementBoxes.add(announcementBox);
    announcementBoxes.add(announcementBox);
    announcementBoxes.add(announcementBox);
    return ListView.separated(
      separatorBuilder: (context, index) {
        return Divider(
          color: Color(0xffEFEEFA),
          thickness: 2,
        );
      },
      itemCount: announcementBoxes.length,
      itemBuilder: (context, index) {
        return announcementBoxes[index];
      },
    );
  }
}
