import 'package:event_schedular/services/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  @override
  int _selectedIndex = 0;
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Builder(
            builder: (context) => IconButton(
              onPressed: () {
                // Scaffold.of(context).openDrawer();
              },
              icon: kaccount,
            ),
          ),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {},
                child: const Icon(
                  Icons.notifications,
                  size: 26.0,
                  color: Colors.black,
                ),
              ),
            ),
          ],
          title: RichText(
            text: ktextSpanOne,
          ),
          backgroundColor: Colors.white,
          centerTitle: true,
        ),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                child: Material(
                  color: Colors.white,
                  elevation: 6.0,
                  borderRadius: BorderRadius.circular(24.0),
                  shadowColor: Colors.grey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        width: 500,
                        height: 300,
                        child: Stack(
                          children: [
                            const ClipRRect(
                              borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(24),
                                  bottom: Radius.zero),
                              
                                child: Image(
                               
                                  image: AssetImage('images/image_event.jpeg'),
                                ),
                              ),

                            Positioned(
                              bottom: 15,
                              left: 10,
                              child: Container(
                                height: 50,
                                width: 275,
                                color: Colors.amber,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 10,
                                    vertical: 10,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      const CircleAvatar(
                                        radius: 15,
                                        backgroundImage:
                                            AssetImage('images/cardimage.jpeg'),
                                      ),
                                      Expanded(
                                        child: Container(
                                          child: Text('SWC event',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  color: Colors.black)),
                                        ),
                                      ),
                                      Container(
                                        child: Icon(Icons.mail),
                                        decoration: BoxDecoration(
                                          color: Colors.orange,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
                        width: 250,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              child: Text(
                                'Headline',
                                textAlign: TextAlign.start,
                                style: new TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            SizedBox(height: 2),
                            Text(
                              'subtitle',
                              style: new TextStyle(
                                  color: Color(0xFF84A2AF), fontSize: 15),
                            ),
                            SizedBox(height: 5),
                            Text(
                              'Centering thejhkjljhkjhkhk aadsfafdsaaaaaaaafaddddddCentering thejhkjljhkjhkhk aadsfafdsaaaaaaaafaddddddCentering thejhkjljhkjhkhk aadsfafdsaaaaaaaafaddddddddddddddddddddddddddddddddddd  adsffffffffffffffffffff  title is the default on iOS. On Android, the ...',
                              style: new TextStyle(
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: 250,
                              margin: const EdgeInsets.fromLTRB(10, 2, 20, 10),
                              child: Row(children: [
                                Container(
                                  height: 30,
                                  width: 60,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                      color: Colors.lightGreenAccent,
                                    ),
                                  ),
                                  child: Text(
                                    'PAID ',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.lightGreenAccent),
                                  ),
                                ),
                                Expanded(
                                  child: SizedBox(),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.deepPurple,
                                    border: Border.all(
                                      color: Colors.black,
                                      width: 1.5,
                                    ),
                                  ),
                                  child: Text(
                                    'UNDO rsvp',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: 'Arial',
                                      color: Colors.white,
                                    ),
                                  ),
                                  height: 30,
                                  width: 80,
                                ),
                              ]),
                            ),
                          ]),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
