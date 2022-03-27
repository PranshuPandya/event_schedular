import 'package:event_schedular_flutter/screens/clubsidescreens/new_mail_screen.dart';
import 'package:flutter/material.dart';
  
class Example2 extends StatefulWidget {
  const Example2({Key? key}) : super(key: key);

  static const String id = 'overlay';
  
  @override
  _Example2State createState() => _Example2State();
}
  
class _Example2State extends State<Example2> {
  void _showOverlay(BuildContext context) async {
      
    // Declaring and Initializing OverlayState
    // and OverlayEntry objects
    OverlayState? overlayState = Overlay.of(context);
    OverlayEntry overlayEntry;
    overlayEntry = OverlayEntry(builder: (context) {
        
      // You can return any widget you like
      // here to be displayed on the Overlay
      return Positioned(
        left:MediaQuery.of(context).size.width * -0.035,
        top: MediaQuery.of(context).size.height * 0.2,
        child: Stack(
          children: const [
            NewMailScreen(),
          ],
        ),
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
      appBar: AppBar(
        title: Text(
          'GeeksForGeeks Example 2',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
          child: Center(
              child: MaterialButton(
        color: Colors.green,
        minWidth: MediaQuery.of(context).size.width * 0.4,
        height: MediaQuery.of(context).size.height * 0.06,
        child: Text(
          'show Overlay',
          style: TextStyle(color: Colors.white),
        ),
        onPressed: () {
            
          // calling the _showOverlay method
          // when Button is pressed
          _showOverlay(context);
        },
      ))),
    );
  }
}