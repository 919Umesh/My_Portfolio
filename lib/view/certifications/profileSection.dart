import 'package:flutter/material.dart';
import 'package:intro_appp/view/certifications/skillContaineer.dart';

class ProfileSection extends StatelessWidget {
  final String profileImageUrl;

  const ProfileSection({super.key, required this.profileImageUrl});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: GridView.builder(
        padding: EdgeInsets.zero,
        itemCount: 1,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          childAspectRatio: 2.0,
        ),
        itemBuilder: (context, index) {
          return AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipOval(
                    child: Image.network(
                      profileImageUrl,
                      width: 200,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Profile Text
                        Text(
                          'Umesh Shahi Thakuri',
                          style: Theme.of(context)
                              .textTheme
                              .headlineLarge
                              ?.copyWith(
                                color: Colors.white, // Set text color to white
                              ), // Updated text style
                        ),
                        const SizedBox(height: 10),
                        Text(
                          'Detail-oriented and skilled Flutter developer with 1.5 years of experience in designing, developing, and deploying mobile applications on both Android and iOS platforms. Proficient in utilizing Dart and Flutter framework to create responsive and efficient cross-platform apps. Strong background in integrating complex APIs and implementing state management solutions to deliver robust and scalable software solutions. Proven ability to collaborate effectively in cross-functional teams to achieve project milestones and exceed client expectations.',
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge
                              ?.copyWith(
                                color: Colors.white, // Set text color to white
                              ), // Updated text style
                        ),
                        const SizedBox(height: 20),
                        // Experience and Education
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            _ProfileDetail(
                              icon: Icons.school,
                              title: 'Education',
                              subtitle:
                                  'Bachelor Information\n Technology (BIT)',
                            ),
                            _ProfileDetail(
                              icon: Icons.work,
                              title: 'Experience',
                              subtitle: '1+ years\nFlutter Developer',
                            ),
                          ],
                        ),
                        SkillsContainer(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}


class _ProfileDetail extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;

  const _ProfileDetail({
    required this.icon,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      elevation: 5,
      color: Colors.blueGrey[700], // Background color for the card
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Icon with white color
            Icon(
              icon,
              size: 30,
              color: Colors.white,
            ),
            const SizedBox(height: 5),
            // Title with white color
            Text(
              title,
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                color: Colors.white, // Set text color to white
              ),
            ),
            const SizedBox(height: 5),
            // Subtitle with white color
            Text(
              subtitle,
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                color: Colors.white, // Set text color to white
              ),
            ),
          ],
        ),
      ),
    );
  }
}