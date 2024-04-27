import 'package:flutter/material.dart';

class alert_screen extends StatelessWidget {
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
                  style: TextStyle(fontSize: 24, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {},
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