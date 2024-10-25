import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intro_appp/view/projects/components/project_deatail.dart';
import '../../../res/constants.dart';
import '../../../view model/getx_controllers/projects_controller.dart';

class ProjectStack extends StatelessWidget {
  final controller = Get.put(ProjectController());
  ProjectStack({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
        padding: const EdgeInsets.only(left: defaultPadding,right: defaultPadding,top: defaultPadding),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: bgColor),
        duration: const Duration(milliseconds: 500),
        child: ProjectDetail(index: index,),
    );
  }
}