import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../res/constants.dart';

class DownloadButton extends StatelessWidget {
  const DownloadButton({super.key});
  @override
  Widget build(BuildContext context) {
    //The location of the pdf
    // assets/images/umesh.pdf
    return InkWell(
      onTap: () {
        launchUrl(Uri.parse('https://drive.google.com/file/d/1NWq00drF-ZV5TiF4NQ_27HKMytU2Bp5S/view?usp=drive_link'));
      },
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(vertical: defaultPadding/1.5,horizontal: defaultPadding*2),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
            boxShadow:const [
              BoxShadow(color: linear1,offset: Offset(0, -1),blurRadius: 5),
              BoxShadow(color: linear2,offset: Offset(0, 1),blurRadius: 5),
            ],
          gradient: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [linear1, linear2,]),
        ),
        child: Row(
          children: [
            Text(
              'Download CV',
              style: Theme.of(context).textTheme.labelSmall!.copyWith(
                  color: Colors.white,
                  letterSpacing: 1.2,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(width: defaultPadding/3,),
            const Icon(Icons.download,color: Colors.white70,size: 15,)
          ],
        ),
      ),
    );
  }
}
