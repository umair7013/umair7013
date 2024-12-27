import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class InterestsPage extends StatelessWidget {
  const InterestsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Interests'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'My Interests',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            const InterestCard(
              interest: 'Photography',
              description:
                  'Exploring the art of capturing moments and creating stunning visual stories.',
            ),
            const InterestCard(
              interest: 'Traveling',
              description:
                  'Discovering new cultures, places, and experiences around the globe.',
            ),
            const InterestCard(
              interest: 'Gaming',
              description:
                  'Enjoying immersive experiences through video games and exploring game development.',
            ),
            const SizedBox(height: 24),
            const Text(
              'Connect with Me',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  icon: const Icon(Icons.facebook, color: Colors.blue),
                  iconSize: 40,
                  onPressed: () => _launchURL('https://www.facebook.com'),
                ),
                IconButton(
                  icon: const Icon(Icons.camera_alt,
                      color: Colors.purple), // Instagram Icon Substitute
                  iconSize: 40,
                  onPressed: () => _launchURL('https://www.instagram.com'),
                ),
                IconButton(
                  icon: const Icon(Icons.link,
                      color: Colors.blueAccent), // LinkedIn Icon Substitute
                  iconSize: 40,
                  onPressed: () => _launchURL('https://www.linkedin.com'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // Fix the URL launching code here
  void _launchURL(String url) async {
    Uri uri = Uri.parse(url); // Convert the URL to a Uri object
    if (await canLaunchUrl(uri)) {
      // Use canLaunchUrl instead of canLaunch
      await launchUrl(uri); // Use launchUrl instead of launch
    } else {
      throw 'Could not launch $url';
    }
  }
}

class InterestCard extends StatelessWidget {
  final String interest;
  final String description;

  const InterestCard(
      {super.key, required this.interest, required this.description});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              interest,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              description,
              style: const TextStyle(fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}
