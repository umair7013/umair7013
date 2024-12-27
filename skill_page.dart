import 'package:flutter/material.dart';

class SkillsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Skills'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'My Skills',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            SkillProgress(title: 'Flutter', progress: 0.85),
            SkillProgress(title: 'Dart', progress: 0.80),
            SkillProgress(title: 'UI Design', progress: 0.75),
          ],
        ),
      ),
    );
  }
}

class SkillProgress extends StatelessWidget {
  final String title;
  final double progress;

  SkillProgress({required this.title, required this.progress});

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
          const SizedBox(height: 8),
          LinearProgressIndicator(
            value: progress,
            backgroundColor: Colors.grey[300],
            color: Colors.blue,
            minHeight: 8,
          ),
          const SizedBox(height: 4),
          Text('${(progress * 100).toInt()}%'),
        ],
      ),
    );
  }
}
