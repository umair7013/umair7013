import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'About Me',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            const Text(
              'Hello! I am a passionate developer with a love for building applications and solving complex problems.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 24),
            const Text(
              'My Interests',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Section(
                title: 'Mobile App Development',
                description:
                    'Designing and developing intuitive mobile applications for Android and iOS.'),
            Section(
                title: 'Web Development',
                description:
                    'Creating responsive and dynamic websites with modern technologies.'),
            Section(
                title: 'Machine Learning',
                description:
                    'Exploring AI and machine learning algorithms to solve real-world problems.'),
            Section(
                title: 'UI/UX Design',
                description:
                    'Crafting user-friendly and visually appealing designs for applications.'),
            Section(
                title: 'Cloud Computing',
                description:
                    'Leveraging cloud services for scalable and reliable solutions.'),
            Section(
                title: 'Open Source Contribution',
                description:
                    'Contributing to open source projects and collaborating with the developer community.'),
          ],
        ),
      ),
    );
  }
}

class Section extends StatelessWidget {
  final String title;
  final String description;

  Section({required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 4),
          Text(
            description,
            style: const TextStyle(fontSize: 14),
          ),
        ],
      ),
    );
  }
}
