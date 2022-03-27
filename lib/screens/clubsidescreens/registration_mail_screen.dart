import 'package:event_schedular_flutter/components/bottom_nav_bar.dart';
import 'package:event_schedular_flutter/components/bottom_nav_bar_clubfest.dart';
import 'package:event_schedular_flutter/components/scheduled_emails_boxes.dart';
import 'package:event_schedular_flutter/screens/clubsidescreens/android_thirty.dart';
import 'package:event_schedular_flutter/screens/clubsidescreens/android_thirty_one.dart';
import 'package:event_schedular_flutter/screens/clubsidescreens/new_mail_screen.dart';
import 'package:event_schedular_flutter/services/constants.dart';
import 'package:flutter/material.dart';

class RegistrationMailScreen extends StatelessWidget {
  const RegistrationMailScreen({Key? key}) : super(key: key);
  void _showOverlay(BuildContext context) async {
    // Declaring and Initializing OverlayState
    // and OverlayEntry objects
    OverlayState? overlayState = Overlay.of(context);
    OverlayEntry overlayEntry;
    overlayEntry = OverlayEntry(builder: (context) {
      // You can return any widget you like
      // here to be displayed on the Overlay
      return Positioned(
        left: MediaQuery.of(context).size.width * -0.035,
        top: MediaQuery.of(context).size.height * 0.2,
        child: const AndroidThirty(),
      );
    });

    // Inserting the OverlayEntry into the Overlay
    overlayState!.insert(overlayEntry);

    // Awaiting for 3 seconds
    await Future.delayed(Duration(seconds: 5));

    // Removing the OverlayEntry from the Overlay
    overlayEntry.remove();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 16, top: 15, right: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Registration Email',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0, bottom: 20),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                child: Container(
                  decoration: keventRectangleBoxDecoration,
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
                            maxLines: 1,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            right: 10.0, top: 4.0, bottom: 4.0),
                        child: Container(
                          height: 30,
                          width: 70,
                          child: Material(
                            elevation: 2.0,
                            color: Color(0xff3D55BE),
                            borderRadius: BorderRadius.circular(100.0),
                            child: MaterialButton(
                              onPressed: () {
                                // _showOverlay(context);
                                // showDialog(
                                //     context: context,
                                //     builder: (BuildContext context) {
                                //       return Dialog(
                                //         child: AndroidThirty(),
                                //       );
                                //     });
                                showGeneralDialog(
                                    context: context,
                                    pageBuilder: (BuildContext context,
                                        Animation<double> animation,
                                        Animation<double> secondaryAnimation) {
                                      return Center(
                                        child: Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              1,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.6,
                                          child: AndroidThirty(),
                                        ),
                                      );
                                    });
                              },
                              minWidth: 43.0,
                              height: 25.0,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Icon(
                                    Icons.edit,
                                    color: Colors.white,
                                    size: 13,
                                  ),
                                  Text(
                                    'Edit',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 12),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Scheduled Emails',
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
                      onPressed: () {
                        showGeneralDialog(
                            context: context,
                            pageBuilder: (BuildContext context,
                                Animation<double> animation,
                                Animation<double> secondaryAnimation) {
                              return Center(
                                child: Container(
                                  width: MediaQuery.of(context).size.width * 1,
                                  height:
                                      MediaQuery.of(context).size.height * 0.7,
                                  child: AndroidThirtyOne(),
                                ),
                              );
                            });
                      },
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
            const Expanded(child: AllSceduledEmails()),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBarClubFest(
        calledfrom: 0,
      ),
    );
  }
}

class AllSceduledEmails extends StatelessWidget {
  const AllSceduledEmails({Key? key, this.event}) : super(key: key);
  final String? event;

  @override
  Widget build(BuildContext context) {
    const scheduledEmailsBox = ScheduledEmailsBoxes();

    List<ScheduledEmailsBoxes> eventBoxes = [scheduledEmailsBox];

    eventBoxes.add(scheduledEmailsBox);
    eventBoxes.add(scheduledEmailsBox);
    eventBoxes.add(scheduledEmailsBox);
    eventBoxes.add(scheduledEmailsBox);
    eventBoxes.add(scheduledEmailsBox);
    eventBoxes.add(scheduledEmailsBox);
    eventBoxes.add(scheduledEmailsBox);
    return ListView.separated(
      separatorBuilder: (context, index) {
        return Divider(
          color: Color(0xffEFEEFA),
          thickness: 2,
        );
      },
      itemCount: eventBoxes.length,
      itemBuilder: (context, index) {
        return eventBoxes[index];
      },
    );
  }
}
