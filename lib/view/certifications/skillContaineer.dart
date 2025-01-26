import 'package:flutter/material.dart';

class SkillsContainer extends StatelessWidget {
  const SkillsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildSkillSection(
              context,
              title: 'Professional Skills',
              skills: ['Flutter', 'Dart','State\nManagement', 'MVC Architecture','Firebase', 'SQLite','Node JS'],
            ),
            const SizedBox(height: 24),
            _buildSkillSection(
              context,
              title: 'Additional Skills',
              skills: ['Git', 'Postman', 'Google Map'],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSkillSection(BuildContext context, {
    required String title,
    required List<String> skills,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
            fontWeight: FontWeight.bold,
            color: Colors.white
          ),
        ),
        const SizedBox(height: 16),
        LayoutBuilder(
          builder: (context, constraints) {
            return constraints.maxWidth > 600
                ? _buildDesktopSkills(skills)
                : _buildMobileSkills(skills);
          },
        ),
      ],
    );
  }

  Widget _buildDesktopSkills(List<String> skills) {
    return Wrap(
      spacing: 16,
      runSpacing: 16,
      alignment: WrapAlignment.center,
      children: skills.map((skill) => _skillItem(skill)).toList(),
    );
  }

  Widget _buildMobileSkills(List<String> skills) {
    return Column(
      children: skills.map((skill) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: _skillItem(skill),
      )).toList(),
    );
  }

  Widget _skillItem(String skill) {
    return Container(
      width: 150,
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.blue.shade300),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.check_circle_outline, color: Colors.grey, size: 24),
          const SizedBox(width: 10),
          Flexible(
            child: Text(
              skill,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.w500,
                color: Colors.white
              ),
            ),
          ),
        ],
      ),
    );
  }
}