import 'package:flutter/material.dart';
import 'package:wellbeings/data/data_center/data_to_classes.dart';
import 'package:wellbeings/utilities/app_navigator.dart';

class CallAttendPage extends StatefulWidget {
  final String callID;
  final String callername;
  final String type;

  const CallAttendPage(
      {super.key,
      required this.callID,
      required this.callername,
      required this.type});

  @override
  State<CallAttendPage> createState() => _CallAttendPageState();
}

class _CallAttendPageState extends State<CallAttendPage> {
  bool callAccepted = false;
  bool callDeclined = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Incoming Call'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const Text(
              'Incoming Call',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20.0),
            CircleAvatar(
              backgroundColor: Colors.grey[300],
              radius: 60.0,
              child: const Icon(
                Icons.person,
                size: 60.0,
                color: Colors.blue,
              ),
            ),
            const SizedBox(height: 20.0),
            Text(
              'Call from: ${widget.callername}',
              style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ElevatedButton(
                  onPressed:(){
                      AppNavigator.pushReplacementNamed('/callpage',
                              arguments: DataToCallPage(
                                  widget.callID, widget.callername,widget.type));
                  },
                  //  callAccepted || callDeclined
                  //     ? null
                  //     : () {
                  //         // Accept the call
                  //         setState(() {
                  //           callAccepted = true;
                  //         });
                  //         // Implement call acceptance logic here
                  //         AppNavigator.pushReplacementNamed('/callpage',
                  //             arguments: DataToCallPage(
                  //                 widget.callID, widget.callername,widget.type));
                  //       },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 10.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  child: const Text(
                    'Accept',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.white,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed:(){
                       Navigator.pop(context);
                  },
                  //  callAccepted || callDeclined
                  //     ? null
                  //     : () {
                  //         // Decline the call
                        
                  //         // Implement call rejection logic here
                  //       },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 10.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  child: const Text(
                    'Decline',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20.0),
          ],
        ),
      ),
    );
  }
}
