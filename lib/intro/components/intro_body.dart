import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import '../../../res/constants.dart';
import '../../view model/responsive.dart';
import 'combine_subtitle.dart';
import 'description_text.dart';
import 'download_button.dart';
import 'headline_text.dart';
import 'imageContaineer.dart';
//
// class IntroBody extends StatelessWidget {
//   const IntroBody({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     var size = MediaQuery.sizeOf(context);
//     return SingleChildScrollView(
//       child: Row(
//         children: [
//
//           if (Responsive.isDesktop(context)) const SquareImageContainer(),
//
//           SingleChildScrollView(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: [
//                 if (!Responsive.isDesktop(context))
//                   SizedBox(
//                     height: size.height * 0.06,
//                   ),
//                 if (!Responsive.isDesktop(context))
//                   Row(
//                     children: [
//                       const SquareImageContainer(),
//                       SizedBox(
//                         width: size.width * 0.23,
//                       ),
//                     ],
//                   ),
//                 if (!Responsive.isDesktop(context))
//                   SizedBox(
//                     height: size.height * 0.1,
//                   ),
//                 const Responsive(
//                   desktop: MyPortfolioText(start: 40, end: 50),
//                   largeMobile: MyPortfolioText(start: 40, end: 35),
//                   mobile: MyPortfolioText(start: 35, end: 30),
//                   tablet: MyPortfolioText(start: 50, end: 40),
//                 ),
//                 if (kIsWeb && Responsive.isLargeMobile(context))
//                   Container(
//                     height: defaultPadding,
//                     color: Colors.transparent,
//                   ),
//                 const CombineSubtitleText(),
//                 const SizedBox(height: defaultPadding / 2),
//                 const Responsive(
//                   desktop: AnimatedDescriptionText(start: 14, end: 15),
//                   largeMobile: AnimatedDescriptionText(start: 14, end: 12),
//                   mobile: AnimatedDescriptionText(start: 14, end: 12),
//                   tablet: AnimatedDescriptionText(start: 17, end: 14),
//                 ),
//                 const SizedBox(
//                   height: defaultPadding * 2,
//                 ),
//                 const DownloadButton(),
//               ],
//             ),
//           ),
//           const Spacer(),
//           // Image on the right side for non-desktop views
//           if (!Responsive.isDesktop(context)) const SquareImageContainer(),
//         ],
//       ),
//     );
//   }
// }


class IntroBody extends StatelessWidget {
  const IntroBody({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
        child: Column(
          children: [
            if (!Responsive.isDesktop(context))
              SizedBox(height: size.height * 0.06),

            // Main content row
            if (Responsive.isDesktop(context))
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SquareImageContainer(),
                  SizedBox(width: size.width * 0.05),
                  Expanded(
                    child: _buildMainContent(context),
                  ),
                ],
              )
            else
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SquareImageContainer(),
                      SizedBox(width: size.width * 0.05),
                    ],
                  ),
                  SizedBox(height: size.height * 0.05),
                  _buildMainContent(context),
                ],
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildMainContent(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Responsive(
          desktop: MyPortfolioText(start: 40, end: 50),
          largeMobile: MyPortfolioText(start: 40, end: 35),
          mobile: MyPortfolioText(start: 35, end: 30),
          tablet: MyPortfolioText(start: 50, end: 40),
        ),
        if (kIsWeb && Responsive.isLargeMobile(context))
          Container(
            height: defaultPadding,
            color: Colors.transparent,
          ),
        const CombineSubtitleText(),
        const SizedBox(height: defaultPadding / 2),
        const Responsive(
          desktop: AnimatedDescriptionText(start: 14, end: 15),
          largeMobile: AnimatedDescriptionText(start: 14, end: 12),
          mobile: AnimatedDescriptionText(start: 14, end: 12),
          tablet: AnimatedDescriptionText(start: 17, end: 14),
        ),
        const SizedBox(height: defaultPadding * 2),
        const DownloadButton(),
      ],
    );
  }
}
