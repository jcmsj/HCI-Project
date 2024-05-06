import 'package:flutter/material.dart';
import 'alert_screen.dart';

class intro_screen extends StatelessWidget {
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
                width: 500, // Adjust the width as needed
                child: Text(
                  'Quake Alert',
                  style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold, color: Color(
                      0xFFFFFFFF)),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 40),
              Container(
                width: 300, // Adjust the width as needed
                child: Text(
                  'Quake alert is a simple mobile application that will automatically give an alert or a notice whenever a seismic activity has been detected. It is an application that is directly connected to the system of Philippine Institute of Volcanology and Seismology (PHIVOLCS).',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12, color: Colors.white),
                ),
              ),
              Container(
                width: 300, // Adjust the width as needed
                child: Text(
                  'It is intended to give you proper directions to keep yourself safe and inform you of the available evacuation areas.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12, color: Colors.white),
                ),
              ),
              SizedBox(height: 70),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => alert_screen()),
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