import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Projects',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          const SizedBox(height: 20),
          ProjectCard(
            title: 'GourmetGuide',
            description:
                'A Python-based application that enables users to discover recipes based on available ingredients. Analyzed user input to suggest relevant dishes with step-by-step preparation methods, enhancing meal planning efficiency.',
            technologies: ['Python'],
            icon: FontAwesomeIcons.utensils,
          ),
          ProjectCard(
            title: 'Smart Infrastructure Tracking',
            description:
                'A tech-driven system to monitor, assess, and manage infrastructure health. Implemented real-time tracking and maintenance scheduling to improve safety, streamline decision-making, and ensure optimal performance.',
            technologies: ['Python', 'Django'],
            icon: FontAwesomeIcons.building,
          ),
          ProjectCard(
            title: 'BrainBlitz – Educational Platform for Young Minds',
            description:
                'An interactive web platform to engage young learners through educational content, quizzes, and activities. Created a learning environment to foster curiosity and promote cognitive development.',
            technologies: ['React', 'JavaScript', 'HTML', 'CSS'],
            icon: FontAwesomeIcons.brain,
          ),
          ProjectCard(
            title: 'Multi-Advertisement Handling System',
            description:
                'Designed and streamlined using React. Planned the system to organize, schedule, and rotate multiple advertisements seamlessly, ensuring optimized visibility and audience targeting.',
            technologies: ['React', 'JavaScript'],
            icon: FontAwesomeIcons.ad,
          ),
          ProjectCard(
            title: 'FinSmart',
            description:
                'A personal finance tracking application with React (frontend) and Node.js/Express (backend). Integrated alerts and notifications to keep users informed of financial activities. Improved expense and income tracking for better money management.',
            technologies: ['React', 'Node.js', 'Express', 'MongoDB'],
            icon: FontAwesomeIcons.moneyBillWave,
          ),
        ],
      ),
    );
  }
}

class ProjectCard extends StatelessWidget {
  final String title;
  final String description;
  final List<String> technologies;
  final IconData icon;

  const ProjectCard({
    super.key,
    required this.title,
    required this.description,
    required this.technologies,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(icon, size: 30, color: Theme.of(context).primaryColor),
                const SizedBox(width: 12),
                Text(
                  title,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ],
            ),
            const SizedBox(height: 12),
            Text(description),
            const SizedBox(height: 12),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: technologies
                  .map(
                    (tech) => Chip(
                      label: Text(tech),
                    ),
                  )
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}