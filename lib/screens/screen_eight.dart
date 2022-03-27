import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Android8 extends StatelessWidget {
  const Android8({Key? key}) : super(key: key);
  static const String id = 'eight_screen';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 30),
              child: Container(
                width: 328,
                height: 200,
                child: FittedBox(
                  child: Stack(
                    children: [
                      FittedBox(
                        child: Material(
                          color: Colors.white,
                          elevation: 14.0,
                          borderRadius: BorderRadius.circular(50.0),
                          shadowColor: Colors.grey,
                          child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image(
                          image: AssetImage("images/image_event.jpeg"),
                        ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 60,
                        left: 40,
                        right: 10,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Event Name',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 200,
                              ),
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Text(
                              'Date Time',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 70,
                              ),
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Text(
                              'location',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 70,
                              ),
                            ),
                            SizedBox(
                              height: 2,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
              child: Container(
                alignment: FractionalOffset.topLeft,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: 30,
                      child: Text(
                        'Register',
                        style: new TextStyle(
                          color: Color(0xFF2E3233),
                          fontSize: 25,
                          letterSpacing: 2,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Related Images: businessmancomputerofficepeopleworkmeetingsuccessperson. Businessman photos for download. All pictures are free to use.',
                      style: new TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 64,
                    width: 328,
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 20,
                        backgroundImage: AssetImage('images/cardimage.jpeg'),
                      ),
                      title: Text('Name'),
                      subtitle: Text('details detailsff'),
                      trailing: Container(
                        width: 94.12,
                        height: 31.79,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.deepPurple,
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.mail,
                              color: Colors.white,
                              size: 20,
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Text(
                              'REGISTER',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                      child: Text(
                    'RESOURCES',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  )),
                  Card(
                    child: ListTile(
                      title: Text('Name'),
                      subtitle: Text('co host'),
                      trailing: Container(
                        width: 94.12,
                        height: 31.79,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.deepPurple,
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.download,
                              color: Colors.white,
                              size: 20,
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Text(
                              'DOWNLOAD',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      title: Text('Name'),
                      subtitle: Text('co host'),
                      trailing: Container(
                        width: 94.12,
                        height: 31.79,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.deepPurple,
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.download,
                              color: Colors.white,
                              size: 20,
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Text(
                              'DOWNLOAD',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      title: Text('Name'),
                      subtitle: Text('co host'),
                      trailing: Container(
                        width: 94.12,
                        height: 31.79,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.deepPurple,
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.download,
                              color: Colors.white,
                              size: 20,
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Text(
                              'DOWNLOAD',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 20,
                        backgroundImage: AssetImage('images/cardimage.jpeg'),
                      ),
                      title: Text('Name'),
                      trailing: SizedBox(
                        width: 40,
                        height: 20,
                        child: const DecoratedBox(
                          child: Text(
                            'HOST',
                            style: TextStyle(fontSize: 12),
                          ),
                          decoration: const BoxDecoration(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 20,
                        backgroundImage: AssetImage('images/cardimage.jpeg'),
                      ),
                      title: Text('Name'),
                      trailing: SizedBox(
                        width: 40,
                        height: 20,
                        child: const DecoratedBox(
                          child: Text(
                            'HOST',
                            style: TextStyle(fontSize: 12),
                          ),
                          decoration: const BoxDecoration(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                      width: 82,
                      height: 30,
                      child: Text(
                        'LOCATION',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      )),
                  SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                      width: 113,
                      height: 30,
                      child: Text(
                        'SOCIAL LINK',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          child: Material(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.0),
                            child: IconButton(
                              onPressed: null,
                              icon: Icon(
                                Icons.alarm,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          child: Material(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.0),
                            child: IconButton(
                              onPressed: null,
                              icon: Icon(
                                Icons.list,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          child: Material(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.0),
                            child: IconButton(
                              onPressed: null,
                              icon: Icon(
                                Icons.menu,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          child: Material(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.0),
                            child: IconButton(
                              onPressed: null,
                              icon: Icon(
                                Icons.ac_unit,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
