import 'package:flutter/material.dart';

class SkillsContainer extends StatelessWidget {
  const SkillsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.grey[200],
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    'Skills',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 16.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: _SkillItem(
                        icon: Icons.check_circle_outline,
                        text: 'Flutter',
                      ),
                    ),
                    Expanded(
                      child: _SkillItem(
                        icon: Icons.check_circle_outline,
                        text: 'Dart',
                      ),
                    ),
                    Expanded(
                      child: _SkillItem(
                        icon: Icons.check_circle_outline,
                        text: 'State Management',
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: _SkillItem(
                        icon: Icons.check_circle_outline,
                        text: 'Firebase',
                      ),
                    ),
                    Expanded(
                      child: _SkillItem(
                        icon: Icons.check_circle_outline,
                        text: 'SQL Lite',
                      ),
                    ),
                    Expanded(
                      child: _SkillItem(
                        icon: Icons.check_circle_outline,
                        text: 'HTML, CSS',
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        SizedBox(width: 25.0,),
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.grey[200],
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    'Extra Skills',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 16.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: _SkillItem(
                        icon: Icons.check_circle_outline,
                        text: 'Git',
                      ),
                    ),
                    Expanded(
                      child: _SkillItem(
                        icon: Icons.check_circle_outline,
                        text: 'Postman',
                      ),
                    ),
                    Expanded(
                      child: _SkillItem(
                        icon: Icons.check_circle_outline,
                        text: 'Encryption',
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: _SkillItem(
                        icon: Icons.check_circle_outline,
                        text: 'Google Map',
                      ),
                    ),
                    Expanded(
                      child: _SkillItem(
                        icon: Icons.check_circle_outline,
                        text: 'General Knowledge',
                      ),
                    ),
                    Expanded(
                      child: _SkillItem(
                        icon: Icons.check_circle_outline,
                        text: 'Speaking Skills',
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class _SkillItem extends StatelessWidget {
  final IconData icon;
  final String text;
  final String? subtitle;

  const _SkillItem({
    required this.icon,
    required this.text,
    this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon),
        const SizedBox(height: 4.0),
        Text(text),
        if (subtitle != null) Text(subtitle!),
      ],
    );
  }
}