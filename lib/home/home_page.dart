
import 'package:flutter/cupertino.dart';

import '../intro/introduction.dart';
import '../view/certifications/certifications.dart';
import '../view/main/main_view.dart';
import '../view/projects/project_view.dart';
import 'contactForm.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  MainView(pages: [
       const Introduction(),
      Certifications(),
      ProjectsView(),
      ContactFormScreen(),
    ]);
  }
}
