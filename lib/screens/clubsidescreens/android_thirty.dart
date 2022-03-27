import 'package:event_schedular_flutter/components/rounded_button.dart';
import 'package:event_schedular_flutter/globals/text_themes.dart';
import 'package:event_schedular_flutter/screens/clubsidescreens/registration_mail_screen.dart';
import 'package:event_schedular_flutter/screens/clubsidescreens/screendemo.dart';
import 'package:event_schedular_flutter/screens/event_screen.dart';
import 'package:event_schedular_flutter/screens/homescreen.dart';
import 'package:event_schedular_flutter/services/constants.dart';
import 'package:flutter/material.dart';

class AndroidThirty extends StatelessWidget {
  const AndroidThirty({Key? key}) : super(key: key);
  static const String id = 'android_thirty';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:  MyAppBar(),
        // PreferredSize(
        //   preferredSize: Size.fromHeight(100.0),
        //   child: Column(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     children: [
        //       AppBar(
        //         title: const Text('Registration Mail'),
        //         actions: <Widget>[
        //           Padding(
        //             padding: const EdgeInsets.only(right: 20.0),
        //             child: GestureDetector(
        //               onTap: () {},
        //               child: Icon(Icons.cancel_outlined),
        //             ),
        //           ),
        //         ],
        //         backgroundColor: Color(0xffC1C1FF),
        //         // toolbarHeight: 30,
        //       ),
        //     ],
        //   ),
        // ),
        body: Padding(
          padding: const EdgeInsets.only(right: 16.0, left: 16.0, top: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(6.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: keventBoxDownBoxDecoration,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 16.0, top: 12.0, bottom: 8.0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          MyFonts().regmailheader("Subject", Color(0xff757575)),
                          MyFonts().regmailsubheader(
                              "Registration confirmerd for EVENT NAME",
                              Color(0xff757575)),
                        ]),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(6.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: keventBoxDownBoxDecoration,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 16.0, top: 12.0, bottom: 8.0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          MyFonts()
                              .regmailheader("Body Text", Color(0xff757575)),
                          MyFonts().regmailsubheader(
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididuntderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                              Color(0xff757575)),
                        ]),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              SizedBox(
                width: 150,
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
                          Icons.check_circle_outline,
                          color: Colors.white,
                          size: 18,
                        ),
                        Text(
                          'Update Email',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}

class MyAppBar extends StatelessWidget with PreferredSizeWidget {
  final double appBarHeight = 56.0;
  @override
  get preferredSize => Size.fromHeight(appBarHeight);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          AppBar(
            title: const Text('Registration Mail'),
            actions: <Widget>[
              Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  onTap: () {},
                  child: Icon(Icons.cancel_outlined),
                ),
              ),
            ],
            backgroundColor: Color(0xffC1C1FF),
            // toolbarHeight: 30,
          ),
        ],
      ),
      // decoration: BoxDecoration(
      //   boxShadow: <BoxShadow>[
      //     BoxShadow(
      //         color: Colors.black54,
      //         blurRadius: 15.0,
      //         offset: Offset(0.0, 0.75))
      //   ],
      //   color:
      //       ThemeData.dark().appBarTheme.color ?? ThemeData.dark().primaryColor,
      // ),
    );
  }
}
