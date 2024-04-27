import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class steps_screen extends StatefulWidget {
  @override
  _StepsScreenState createState() => _StepsScreenState();
}

class _StepsScreenState extends State<steps_screen> {
  final List<String> earthquakeSteps = [
    'assets/step1.png',
    'assets/step2.png',
    'assets/step3.png',
  ];

  final List<String> stepContent = [
    'During an earthquake, quickly move to a safe location away from windows and heavy furniture. Take cover under a sturdy table or desk, and protect your head and neck with your arms.',
    'If possible, move to an open area away from buildings, trees, streetlights, and utility wires. Be cautious of falling debris and aftershocks.',
    'Follow evacuation procedures and move to a designated evacuation area. Stay alert to instructions from authorities and avoid areas that may pose a risk.',
  ];

  int selectedStepIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quake Alert',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quake Alert'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.all(16),
                child: Text(
                  stepContent[selectedStepIndex],
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(16),
              child: Text(
                'Steps:',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Container(
              height: 200,
              child: PageView.builder(
                itemCount: earthquakeSteps.length,
                controller: PageController(viewportFraction: 0.8),
                onPageChanged: (int index) {
                  setState(() {
                    selectedStepIndex = index;
                  });
                },
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Image.asset(
                      earthquakeSteps[index],
                      fit: BoxFit.cover,
                    ),
                  );
                },
              ),
            ),
            Container(
              padding: EdgeInsets.only(bottom: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: _launchDialer,
                    icon: Icon(Icons.phone),
                  ),
                  IconButton(
                    onPressed: _launchMessenger,
                    icon: Icon(Icons.message),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _launchDialer() async {
    const phoneNumber = 'tel:+1234567890'; // Replace with the desired phone number
    if (await canLaunch(phoneNumber)) {
      await launch(phoneNumber);
    } else {
      print('Could not launch $phoneNumber');
    }
  }

  void _launchMessenger() async {
    const messengerUrl = 'sms:1234567890'; // Replace with the desired phone number
    if (await canLaunch(messengerUrl)) {
      await launch(messengerUrl);
    } else {
      print('Could not launch $messengerUrl');
    }
  }
}