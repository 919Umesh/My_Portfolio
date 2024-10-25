import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intro_appp/view/certifications/profileSection.dart';
import '../../res/constants.dart';
import '../../view model/getx_controllers/certification_controller.dart';
import '../../view model/responsive.dart';
import '../projects/components/title_text.dart';

class Certifications extends StatelessWidget {
  final controller=Get.put(CertificationController());
   Certifications({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if(Responsive.isLargeMobile(context))const SizedBox(
            height: defaultPadding,
          ),
          const TitleText(prefix: 'About', title: 'Me'),
          const SizedBox(
            height: defaultPadding,
          ),
          Expanded(
              child: Responsive(
                  desktop: ProfileSection(profileImageUrl: 'assets/images/photo2.jpg',),
                  extraLargeScreen: ProfileSection(profileImageUrl: 'assets/images/photo2.jpg',),
                  largeMobile: ProfileSection(profileImageUrl:'assets/images/photo2.jpg',),
                  mobile: ProfileSection(profileImageUrl: 'assets/images/photo2.jpg',),
                  tablet: ProfileSection(profileImageUrl:'assets/images/photo2.jpg',)))
        ],
      ),
    );
  }
}










