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

  final List<String> contents = [
    'assets/content1.png',
    'assets/content2.png',
    'assets/content3.png',
  ];

  final List<String> stepheader = [
    'DUCK COVER AND HOLD!',
    'GET TO SAFETY!',
    'EVACUATE!',
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
          title: Text('Quake Alert', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Color(
              0xFF4EA0FD))),
          backgroundColor: Colors.white,
        ),
        backgroundColor: Colors.white,
        body: LayoutBuilder(
          builder: (context, constraints) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(16),
                    child: Column(
                      children: [
                        Image.asset(
                          contents[selectedStepIndex],
                          fit: BoxFit.cover,
                        ),
                        SizedBox(height: 16),
                        Text(
                          stepheader[selectedStepIndex],
                          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Color(
                              0xFF4EA0FD)),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          stepContent[selectedStepIndex],
                          style: TextStyle(fontSize: 15),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(0),
                  child: Text(
                    'Steps:',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Color(
                        0xFF4EA0FD)),
                  ),
                ),
                Container(
                  height: constraints.maxHeight * 0.2, // Adjust the fraction as needed
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
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
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                          child: Image.asset(
                            earthquakeSteps[index],
                            fit: BoxFit.contain,
                          ),
                        );
                      },
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Theme(
                        data: Theme.of(context).copyWith(
                          iconTheme: IconThemeData(color: Colors.lightBlue),
                        ),
                        child: IconButton(
                          onPressed: _launchDialer,
                          icon: Icon(Icons.phone),
                        ),
                      ),
                      Theme(
                        data: Theme.of(context).copyWith(
                          iconTheme: IconThemeData(color: Colors.lightBlue),
                        ),
                        child: IconButton(
                          onPressed: _launchMessenger,
                          icon: Icon(Icons.message),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  void _launchDialer() async {
    const phoneNumber = 'tel:+911'; // Replace with the desired phone number
    if (await canLaunch(phoneNumber)) {
      await launch(phoneNumber);
    } else {
      print('Could not launch $phoneNumber');
    }
  }

  void _launchMessenger() async {
    const messengerUrl = 'sms:911'; // Replace with the desired phone number
    if (await canLaunch(messengerUrl)) {
      await launch(messengerUrl);
    } else {
      print('Could not launch $messengerUrl');
    }
  }
}