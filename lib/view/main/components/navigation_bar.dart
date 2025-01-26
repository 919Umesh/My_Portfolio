import 'package:flutter/material.dart';
import '../../../intro/components/side_menu_button.dart';
import '../../../res/constants.dart';
import '../../../view model/responsive.dart';
import 'connect_button.dart';
import 'navigation_button_list.dart';

class TopNavigationBar extends StatelessWidget {
  const TopNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(defaultPadding),
            child: !Responsive.isLargeMobile(context)
                ? ShaderMask(
              shaderCallback: (bounds) => const LinearGradient(
                colors: [linear1, linear2],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ).createShader(bounds),
              child: const Text(
                'Umesh Shahi Thakuri',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.white, // Text color for non-gradient areas
                ),
                 // debugPrint(jsonData.toString());
              ),
            )
                : Container(),
          ),
          const Spacer(flex: 3), // Increased flex value to push the buttons further right
          if (!Responsive.isLargeMobile(context)) const NavigationButtonList(),
          const SizedBox(width: defaultPadding), // Optional: Add extra space between buttons and edge
          const Spacer(),
        ],
      ),
    );
  }
}
