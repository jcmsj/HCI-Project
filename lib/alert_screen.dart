import 'package:flutter/material.dart';
import 'package:sample/steps_screen.dart';

class alert_screen extends StatelessWidget {
  final String earthquakeDetails = '''
    Magnitude: 7.2
    Location: Manila, Philippines
    Date: May 6, 2024
    Time: 08:00 AM
    ''';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quake Alert',
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 200, // Adjust the width as needed
                child: Text(
                  'Earthquake Alert!!!',
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold, color: Color(0xFFFFFFFF)),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 40),
              Container(
                width: 300, // Adjust the width as needed
                child: Text(
                  'An earthquake has been detected near your location.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12, color: Colors.white),
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: 300, // Adjust the width as needed
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  earthquakeDetails,
                  style: TextStyle(fontSize: 12, color: Colors.white),
                ),
              ),
              SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => steps_screen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                ),
                child: Text(
                  'Tap to proceed',
                  style: TextStyle(fontSize: 16, color: Colors.lightBlue),
                ),
              ),
            ],
          ),
        ),
        backgroundColor: Colors.lightBlue,
      ),
    );
  }
}
