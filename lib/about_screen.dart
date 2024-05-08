import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About The Devs'),
      ),
      body: ListView.builder(
        itemCount: 4,
        itemBuilder: (context, index) {
          return ListTile(
            title: Column(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(_getDeveloperImage(index)),
                  radius: 40, // Adjust the radius as needed
                ),
                const SizedBox(
                    height:
                        8), // Add some spacing between the avatar and the name
                Text(
                  _getDeveloperName(index),
                  style: const TextStyle(fontSize: 24),
                ),
                const SizedBox(
                    height:
                        4), // Add some spacing between the name and the title
                Text(
                  _getDeveloperDegree(index),
                  style: const TextStyle(fontSize: 16),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  String _getDeveloperImage(int index) {
    switch (index) {
      case 0:
        return 'assets/marx_roxas.png';
      case 1:
        return 'assets/john_robias.jpg';
      case 2:
        return 'assets/jean_sanjuan.png';
      case 3:
        return 'assets/alex_sison.gif';
      default:
        return '';
    }
  }

  String _getDeveloperName(int index) {
    switch (index) {
      case 0:
        return 'Marx Gabriel Roxas';
      case 1:
        return 'John Maverick Robias';
      case 2:
        return 'Jean Carlo M. San Juan';
      case 3:
        return 'Alex Wilhelm Sison';
      default:
        return '';
    }
  }

  String _getDeveloperDegree(int index) {
    switch (index) {
      case 0:
        return 'BSCS';
      case 1:
        return 'BSCS';
      case 2:
        return 'BSCS';
      case 3:
        return 'BSCS';
      default:
        return '';
    }
  }
}
