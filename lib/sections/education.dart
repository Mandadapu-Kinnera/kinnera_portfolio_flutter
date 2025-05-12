import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class EducationSection extends StatelessWidget {
  const EducationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Education',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          const SizedBox(height: 20),
          EducationCard(
            icon: FontAwesomeIcons.graduationCap,
            title: 'B. Tech, Computer Science Engineering (Cyber Security)',
            subtitle: 'Malla Reddy University (2023 – 2027)',
            details: '2nd Year-2nd Semester\nCGPA: 9.47',
          ),
          EducationCard(
            icon: FontAwesomeIcons.school,
            title: 'Board of Intermediate',
            subtitle: 'BITT Junior College',
            details: '98.1%',
          ),
          EducationCard(
            icon: FontAwesomeIcons.school,
            title: 'Board of Secondary School Certificate',
            subtitle: 'Sri Chaitanya School',
            details: '10/10',
          ),
        ],
      ),
    );
  }
}

class EducationCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final String details;

  const EducationCard({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.details,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(icon, size: 40, color: Theme.of(context).primaryColor),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    subtitle,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    details,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}