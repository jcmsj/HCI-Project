import 'package:flutter/material.dart';

class steps_screen extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<steps_screen> {
  final List<String> earthquakeSteps = [
    'Duck, Cover, and Hold',
    'Get to Safety',
    'Evacuate',
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
            Slider(
              value: selectedStepIndex.toDouble(),
              min: 0,
              max: (earthquakeSteps.length - 1).toDouble(),
              divisions: earthquakeSteps.length - 1,
              onChanged: (double value) {
                setState(() {
                  selectedStepIndex = value.toInt();
                });
              },
              label: earthquakeSteps[selectedStepIndex],
              activeColor: Colors.lightBlue,
              inactiveColor: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}