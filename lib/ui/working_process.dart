import 'package:flutter/material.dart';
import 'package:portfolio/config/constants.dart';
import 'package:portfolio/config/strings.dart';
import 'package:portfolio/ui/responsive_widget.dart';

import '../config/colors.dart';
import '../config/styles.dart';

class WorkingProcess extends StatelessWidget {
  const WorkingProcess({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      desktopScreen: Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * .15,
          vertical: 100,
        ),
        child: Column(
          children: [
            Text('WORKING PROCESS',
                style: AppStyles.title.copyWith(
                  color: AppColors.primaryColor,
                  height: 1.8,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  fontFamily: AppConstants.fontFamilyPoppins,
                )),
            Container(width: 100, height: 2, color: AppColors.primaryColor),
            const SizedBox(height: 3),
            Container(width: 75, height: 2, color: AppColors.primaryColor),
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: __buildProcess(context, '01.', 'icons/plan.png',
                      'Plan', AppStrings.c001),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: __buildProcess(context, '02.', 'icons/design.png',
                      'Design', AppStrings.c002),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: __buildProcess(context, '03.', 'icons/code.png',
                      'Code', AppStrings.c003),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: __buildProcess(context, '04.', 'icons/demo.png',
                      'Demo', AppStrings.c004),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: __buildProcess(context, '05.', 'icons/deployment.png',
                      'Deployment', AppStrings.c005),
                ),
              ],
            ),
          ],
        ),
      ),
      mobileScreen: Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * .15,
          vertical: 50,
        ),
        child: Column(
          children: [
            Text(
              'WORKING PROCESS',
              style: AppStyles.title.copyWith(
                color: AppColors.primaryColor,
                height: 1.8,
                fontSize: 40,
                fontWeight: FontWeight.bold,
                fontFamily: AppConstants.fontFamilyPoppins,
              ),
              textAlign: TextAlign.center,
            ),
            Container(width: 75, height: 2, color: AppColors.primaryColor),
            const SizedBox(height: 3),
            Container(width: 50, height: 2, color: AppColors.primaryColor),
            const SizedBox(height: 50),
            __buildProcess(
                context, '01.', 'icons/plan.png', 'Plan', AppStrings.c001),
            const SizedBox(height: 10),
            __buildProcess(
                context, '02.', 'icons/design.png', 'Design', AppStrings.c002),
            const SizedBox(height: 10),
            __buildProcess(
                context, '03.', 'icons/code.png', 'Code', AppStrings.c003),
            const SizedBox(height: 10),
            __buildProcess(
                context, '04.', 'icons/demo.png', 'Demo', AppStrings.c004),
            const SizedBox(height: 10),
            __buildProcess(context, '04.', 'icons/deployment.png', 'Deployment',
                AppStrings.c005),
          ],
        ),
      ),
    );
  }

  Widget __buildProcess(BuildContext context, String index, String iconPath,
      String title, String description) {
    return Card(
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Text(
                index,
                style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                    fontFamily: AppConstants.fontFamilyPoppins),
              ),
            ),
            const SizedBox(height: 10),
            Divider(color: AppColors.greyLight),
            const SizedBox(height: 10),
            // AppIcon(iconPath, color: AppColors.transparent, size: 40),
            Image.asset(
              iconPath,
              height: 200,
              width: 200,
            ),
            const SizedBox(height: 20),
            Text(
              title,
              style: const TextStyle(
                  color: AppColors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  fontFamily: AppConstants.fontFamilyPoppins),
            ),
            const SizedBox(height: 10),
            Text(
              description,
              style: const TextStyle(
                  color: Colors.black45,
                  fontSize: 13,
                  fontFamily: AppConstants.fontFamilyPoppins),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
