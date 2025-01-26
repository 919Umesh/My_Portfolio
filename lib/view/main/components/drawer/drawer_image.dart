import 'package:flutter/material.dart';

import '../../../../res/constants.dart';

class DrawerImage extends StatelessWidget {
  const DrawerImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      padding: const EdgeInsets.all(defaultPadding/6),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          gradient: const LinearGradient(
            colors: [
              linear1,
              linear2,
            ],
          ),
          boxShadow: const [
            BoxShadow(color: linear1,blurRadius: 10,offset: Offset(0, 2)),
            BoxShadow(color: linear2,blurRadius: 10,offset: Offset(0, -2)),
          ]
      ),
      child: ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: Transform.rotate(
              angle: 0.1,
              child: Image.asset('assets/images/cap.png',fit: BoxFit.cover,))),
    );
  }
}
