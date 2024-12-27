import 'package:flutter/material.dart';
import 'about_page.dart';
import 'experience_page.dart';
import 'skill_page.dart';
import 'education_page.dart';
import 'interest_page.dart';

void main() {
  runApp(const PortfolioApp());
}

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Portfolio App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Portfolio'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('About'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AboutPage()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.work),
              title: const Text('Experience'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ExperiencePage()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.code),
              title: const Text('Skills'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SkillsPage()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.book),
              title: const Text('Education'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const EducationPage()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.lightbulb),
              title: const Text('Interests'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const InterestsPage()),
                );
              },
            ),
          ],
        ),
      ),
      body: const Center(
        child: Text(
          'Welcome to My Portfolio!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
