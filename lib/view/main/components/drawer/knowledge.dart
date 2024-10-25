import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../res/constants.dart';

class KnowledgeText extends StatelessWidget {
  const KnowledgeText({super.key, required this.knowledge});
  final String knowledge;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding/2),
      child: Row(
        children: [
          Image.asset('assets/images/cap.png'),
          SizedBox(width: defaultPadding/2,),
          Text(knowledge,style: TextStyle(color: Colors.white),),
        ],
      ),
    );
  }
}

