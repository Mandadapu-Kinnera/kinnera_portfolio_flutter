import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Skills',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          const SizedBox(height: 20),
          SkillCategory(
            title: 'Programming Languages',
            skills: const [
              Skill(name: 'Python', icon: FontAwesomeIcons.python),
              Skill(name: 'MySQL', icon: FontAwesomeIcons.database),
            ],
          ),
          SkillCategory(
            title: 'Web Development',
            skills: const [
              Skill(name: 'HTML', icon: FontAwesomeIcons.html5),
              Skill(name: 'CSS', icon: FontAwesomeIcons.css3),
              Skill(name: 'JavaScript', icon: FontAwesomeIcons.js),
              Skill(name: 'React', icon: FontAwesomeIcons.react),
            ],
          ),
          SkillCategory(
            title: 'Frameworks',
            skills: const [
              Skill(name: 'Django', icon: FontAwesomeIcons.python),
              Skill(name: 'Flask', icon: FontAwesomeIcons.python),
            ],
          ),
          SkillCategory(
            title: 'Other Skills',
            skills: const [
              Skill(name: 'Artificial Intelligence', icon: FontAwesomeIcons.robot),
              Skill(name: 'Machine Learning', icon: FontAwesomeIcons.brain),
            ],
          ),
        ],
      ),
    );
  }
}

class SkillCategory extends StatelessWidget {
  final String title;
  final List<Skill> skills;

  const SkillCategory({
    super.key,
    required this.title,
    required this.skills,
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
            Text(
              title,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 10),
            Wrap(
              spacing: 12,
              runSpacing: 12,
              children: skills
                  .map(
                    (skill) => Chip(
                      avatar: Icon(skill.icon, size: 16),
                      label: Text(skill.name),
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

class Skill {
  final String name;
  final IconData icon;

  const Skill({
    required this.name,
    required this.icon,
  });
}