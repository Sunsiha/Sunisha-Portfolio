import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/config/strings.dart';
import 'package:portfolio/ui/responsive_widget.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:universal_html/html.dart' as html;

import '../config/colors.dart';
import '../config/constants.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) => ResponsiveWidget(
        desktopScreen: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * .15,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'I’m ${AppStrings.l002Name}',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.w900,
                  fontFamily: AppConstants.fontFamilyPoppins,
                ),
              ),
              const Text(
                AppStrings.l002Job,
                style: TextStyle(
                  color: AppColors.primaryColor,
                  fontSize: 40,
                  fontWeight: FontWeight.w900,
                  fontFamily: AppConstants.fontFamilyPoppins,
                ),
              ),
              const SizedBox(height: 5),
              SizedBox(
                width: MediaQuery.of(context).size.width / 2,
                child: Text(
                  AppStrings.l003Description,
                  style: Theme.of(context).textTheme.bodyText2!.copyWith(
                        color: Colors.grey[100],
                        fontSize: 17,
                        fontFamily: AppConstants.fontFamilyPoppins,
                      ),
                ),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: AppColors.primaryColor,
                  elevation: 3,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32.0)),
                  minimumSize: const Size(100, 40), //////// HERE
                ),
                onPressed: _downloadCV,
                child:  Padding(
                  padding: const EdgeInsets.only(bottom: 2.0),
                  child: Text(
                    AppStrings.b001DownloadCV,
                      style:Theme.of(context).textTheme.labelLarge!.copyWith(
                        color: AppColors.primaryColor,
                        fontSize: 15,
                        height: 1.8,
                        fontFamily: AppConstants.fontFamilyPoppins,
                      )
                  ),
                ),
              ),
              const SizedBox(height: 100),
            ],
          ),
        ),
        mobileScreen: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * .15,
          ),
          child: FittedBox(
            child: Column(
              children: [
                const Text(
                  'I’m ${AppStrings.l002Name}',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w900,
                    fontFamily: AppConstants.fontFamilyPoppins,
                  ),
                ),
                const Text(
                  AppStrings.l002Job,
                  style: TextStyle(
                    color: AppColors.primaryColor,
                    fontSize: 30,
                    fontWeight: FontWeight.w900,
                    fontFamily: AppConstants.fontFamilyPoppins,
                  ),
                ),
                const SizedBox(height: 5),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    AppStrings.l003Description,
                    style: Theme.of(context).textTheme.bodyText2!.copyWith(
                          color: Colors.grey[100],
                          fontSize: 15,
                          height: 1.8,
                          fontFamily: AppConstants.fontFamilyPoppins,
                        ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 30),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: AppColors.primaryColor,
                    elevation: 3,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 20),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32.0)),
                    minimumSize: const Size(100, 40), //////// HERE
                  ),
                  onPressed: _downloadCV,
                  child:  Padding(
                    padding: const EdgeInsets.only(bottom: 2.0),
                    child: Text(
                      AppStrings.b001DownloadCV,
                        style:Theme.of(context).textTheme.labelLarge!.copyWith(
                          color: AppColors.primaryColor,
                          fontSize: 15,
                          height: 1.8,
                          fontFamily: AppConstants.fontFamilyPoppins,
                        )
                    ),
                  ),
                ),
                const SizedBox(height: 100),
              ],
            ),
          ),
        ),
      );

  void _downloadCV() {
    kIsWeb
        ? html.window.open(AppConstants.cv, "pdf")
        : openURL(AppConstants.cv);
  }
}
