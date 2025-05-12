import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const CircleAvatar(
            radius: 80,
            backgroundImage: AssetImage('assets/profile.jpg'), // Add your profile image
            backgroundColor: Colors.transparent,
          ),
          const SizedBox(height: 20),
          Text(
            'Mandadapu Kinnera',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          const SizedBox(height: 10),
          Text(
            'Computer Science Engineer (Cyber Security)',
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  ListTile(
                    leading: const Icon(Icons.email),
                    title: const Text('Email'),
                    subtitle: const Text('mandadapukinnera@gmail.com'),
                    onTap: () {}, // Add email functionality
                  ),
                  ListTile(
                    leading: const Icon(Icons.phone),
                    title: const Text('Phone'),
                    subtitle: const Text('+91 8639986181'),
                    onTap: () {}, // Add call functionality
                  ),
                  ListTile(
                    leading: const Icon(FontAwesomeIcons.linkedin),
                    title: const Text('LinkedIn'),
                    subtitle: const Text('linkedin.com/in/kinnera-mandadapu-b20668303'),
                    onTap: () {}, // Add LinkedIn URL launch
                  ),
                  ListTile(
                    leading: const Icon(FontAwesomeIcons.github),
                    title: const Text('GitHub'),
                    subtitle: const Text('github.com/Mandadapu-Kinnera'),
                    onTap: () {}, // Add GitHub URL launch
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Personal Information',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(height: 10),
                  const Text('Languages Known: English, Telugu, Hindi'),
                  const SizedBox(height: 8),
                  const Text('Address: H-NO: 4-5 Pedamakkena, Sattenapalli, Pahadut(dist), Andhra Pradesh-522402'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}