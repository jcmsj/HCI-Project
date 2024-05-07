import 'package:flutter/material.dart';
import 'alert_screen.dart';
import 'about_screen.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quake Alert',
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                width: 500, // Adjust the width as needed
                child: Text(
                  'Quake Alert',
                  style: TextStyle(
                      fontSize: 45,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFFFFFFF)),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 40),
              const SizedBox(
                width: 300, // Adjust the width as needed
                child: Text(
                  'Quake alert is a simple mobile application that will automatically give an alert or a notice whenever a seismic activity has been detected. It is an application that is directly connected to the system of Philippine Institute of Volcanology and Seismology (PHIVOLCS).',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 14, color: Colors.white),
                ),
              ),
              const SizedBox(
                width: 300, // Adjust the width as needed
                child: Text(
                  'It is intended to give you proper directions to keep yourself safe and inform you of the available evacuation areas.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 14, color: Colors.white),
                ),
              ),
              // About the Devs
              const SizedBox(height: 70),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AboutScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lightBlue,
                ),
                child: const Text(
                  'About the Devs',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
              const SizedBox(height: 60),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AlertScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                ),
                child: const Text(
                  'Tap to proceed',
                  style: TextStyle(fontSize: 18, color: Colors.lightBlue),
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
