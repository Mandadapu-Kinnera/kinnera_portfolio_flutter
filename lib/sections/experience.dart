import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ExperienceSection extends StatelessWidget {
  const ExperienceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Experience',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          const SizedBox(height: 20),
          ExperienceCard(
            company: 'Deloitte',
            position: 'Data Analytics Intern',
            period: 'April 2025',
            isVirtual: true,
            points: const [
              'Analyzed business datasets containing over 10,000+ rows to extract actionable insights using Excel and Python, resulting in a 15% improvement in decision-making speed.',
              'Prepared and presented 3 data-driven business proposals to simulated stakeholders, achieving a 100% success rate in approval scenarios.',
              'Created interactive dashboards using Excel and Power BI to visualize trends, improving reporting clarity for business teams by 25%.',
              'Refined data cleaning processes, reducing data inconsistencies by 40% and improving model accuracy in exploratory analysis tasks.',
            ],
          ),
          ExperienceCard(
            company: 'Deloitte',
            position: 'Technology Consulting Intern',
            period: 'April 2025',
            isVirtual: true,
            points: const [
              'Solved 4 client simulation case studies by developing strategic technology solutions, increasing workflow efficiency by up to 30% in proposed models.',
              'Collaborated with a virtual team of 5+ members in agile sprints, delivering all tasks ahead of deadlines.',
              'Assessed client business operations and proposed process automation strategies that could potentially reduce operational costs by 20%.',
              'Guided peer team discussions, documenting 10+ actionable steps for the implementation of digital solutions.',
            ],
          ),
          ExperienceCard(
            company: 'Zaalima Development',
            position: 'Python Developer Intern (Ongoing)',
            period: 'March 2025 – Present',
            isVirtual: false,
            points: const [
              'Developing a Python-based automation system that reduced manual data entry time by 60% across internal tools.',
              'Integrated 5+ REST APIs and Python libraries (e.g., Pandas, Flask) to automate data reporting, saving 12+ hours/week in team operations.',
              'Debugged and refined code across multiple modules, improving script runtime efficiency by 35%.',
              'Collaborating with a team of 6 developers using Git, contributing to over 25+ commits and 4 successful sprint releases.',
            ],
          ),
        ],
      ),
    );
  }
}

class ExperienceCard extends StatelessWidget {
  final String company;
  final String position;
  final String period;
  final bool isVirtual;
  final List<String> points;

  const ExperienceCard({
    super.key,
    required this.company,
    required this.position,
    required this.period,
    required this.isVirtual,
    required this.points,
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
                Icon(
                  isVirtual ? FontAwesomeIcons.laptop : FontAwesomeIcons.building,
                  color: Theme.of(context).primaryColor,
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        position,
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                      Text(
                        '$company • $period',
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      if (isVirtual)
                        Text(
                          'Virtual via Forage',
                          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                                fontStyle: FontStyle.italic,
                              ),
                        ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            ...points.map(
              (point) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 4, right: 8),
                      child: Icon(Icons.circle, size: 8),
                    ),
                    Expanded(child: Text(point)),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}