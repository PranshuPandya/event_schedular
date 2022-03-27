// ignore_for_file: file_names
import 'package:event_schedular_flutter/screens/clubsidescreens/announcement_screen.dart';
import 'package:event_schedular_flutter/screens/clubsidescreens/registration_mail_screen.dart';
import 'package:event_schedular_flutter/screens/clubsidescreens/screendemo.dart';
import 'package:event_schedular_flutter/screens/event_screen.dart';
import 'package:event_schedular_flutter/services/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class AndroidTwentySix extends StatelessWidget {
  const AndroidTwentySix({Key? key}) : super(key: key);
  static const String id = 'android_26';
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (context) => IconButton(
            onPressed: () {},
            icon: kaccount,
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {
                // get size of the context
                final size = MediaQuery.of(context).size;
                print(size);
              },
              child: kleftArrowIcon,
            ),
          ),
        ],
        title: RichText(
          text: ktextSpanOne,
        ),
        backgroundColor: Color(0xffF4F3FC),
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            
            Container(
              color: Color(0xffF4F3FC),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 18.0, top: 16.0, bottom: 30.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Event Name',
                          style: TextStyle(
                            fontSize: 24.0,
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          'Date time',
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Color(0xff0C0564),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          'Location',
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Color(0xff0C0564),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(right: 22, top: 16, bottom: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          height: 20,
                          width: 65,
                          child: Material(
                            elevation: 2.0,
                            color: Color(0xffFEFBFF),
                            borderRadius: BorderRadius.circular(3.5),
                            child: MaterialButton(
                              onPressed: () {},
                              minWidth: 55.0,
                              height: 20.0,
                              child: Text(
                                'copy link',
                                style: TextStyle(
                                  color: Color(0xffAAA8AB),
                                  fontSize: 8.0,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 25,
                          width: 80,
                          child: Material(
                            elevation: 2.0,
                            color: Color(0xffEB5757),
                            borderRadius: BorderRadius.circular(100),
                            child: MaterialButton(
                              onPressed: () {},
                              minWidth: 60.0,
                              height: 20.0,
                              child: Text(
                                'Cancel Event',
                                style: TextStyle(
                                  color: Color(0xffFEFBFF),
                                  fontSize: 8.0,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            DefaultTabController(
              length: 6,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    color: Color(0xffF4F3FC),
                    child: const TabBar(
                      isScrollable: true,
                      tabs: [
                        Tab(
                          text: 'Guests',
                        ),
                        Tab(
                          text: 'Details',
                        ),
                        Tab(
                          text: 'Announcements',
                        ),
                        Tab(
                          text: 'Resources',
                        ),
                        Tab(
                          text: 'Email',
                        ),
                        Tab(
                          text: 'Insights',
                        ),
                      ],
                      labelColor: Color(0xff3D55BE),
                      unselectedLabelColor: Color(0xff1D192B),
                      labelStyle: TextStyle(
                        fontSize: 8,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height - 280,
                    child: TabBarView(children: [
                      const Demo(),
                      EventScreen(),
                      const AnnouncementScreen(),
                      EventScreen(),
                      const RegistrationMailScreen(),
                      const Demo(),
                    ]),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class WidgetSize extends StatefulWidget {
  final Widget child;
  final Function onChange;

  const WidgetSize({
    Key? key,
    required this.onChange,
    required this.child,
  }) : super(key: key);

  @override
  _WidgetSizeState createState() => _WidgetSizeState();
}

class _WidgetSizeState extends State<WidgetSize> {
  @override
  Widget build(BuildContext context) {
    SchedulerBinding.instance!.addPostFrameCallback(postFrameCallback);
    return Container(
      key: widgetKey,
      child: widget.child,
    );
  }

  var widgetKey = GlobalKey();
  var oldSize;

  void postFrameCallback(_) {
    var context = widgetKey.currentContext;
    if (context == null) return;

    var newSize = context.size;
    if (oldSize == newSize) return;

    oldSize = newSize;
    widget.onChange(newSize);
  }
}
