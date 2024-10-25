import 'package:flutter/material.dart';
import '../../../../res/constants.dart';
import 'drawer_image.dart';
class About extends StatelessWidget {
  const About({super.key});
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color:  Colors.blue,
        child: Column(
          children: [
            const Spacer(flex: 2,),
            const DrawerImage(),
            const Spacer(),
            Text('Umesh Shahi',style: Theme.of(context).textTheme.titleSmall,),
            const SizedBox(height: defaultPadding/4,),
            const Text('Flutter Developer & The Student of\nInformation Technology',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.w200,
                  height: 1.5
              ),),
            const Spacer(flex: 2,),
          ],
        ),
      ),
    );
  }
}
