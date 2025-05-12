import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CertificationsSection extends StatelessWidget {
  const CertificationsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Certifications',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          const SizedBox(height: 20),
          CertificationCard(
            title: 'Python at NareshIT',
            icon: FontAwesomeIcons.python,
          ),
          CertificationCard(
            title: 'CSS and Python at HackerRank',
            icon: FontAwesomeIcons.hackerrank,
          ),
          CertificationCard(
            title: 'Python, React, HTML, CSS at Scaler Topics',
            icon: FontAwesomeIcons.code,
          ),
          CertificationCard(
            title: 'Responsive Web Design from FreeCodeCamp',
            icon: FontAwesomeIcons.freeCodeCamp,
          ),
          CertificationCard(
            title: 'Front End libraries Legacy from FreeCodeCamp',
            icon: FontAwesomeIcons.freeCodeCamp,
          ),
        ],
      ),
    );
  }
}

class CertificationCard extends StatelessWidget {
  final String title;
  final IconData icon;

  const CertificationCard({
    super.key,
    required this.title,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: ListTile(
        leading: Icon(icon, color: Theme.of(context).primaryColor),
        title: Text(title),
        trailing: const Icon(Icons.verified, color: Colors.green),
      ),
    );
  }
}