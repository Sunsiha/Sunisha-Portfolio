import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/config/strings.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:universal_html/html.dart' as html;

import '../config/colors.dart';
import '../config/constants.dart';
import '../config/styles.dart';
import '../data/skills.dart';
import 'responsive_widget.dart';

class About extends StatelessWidget {
  final String _avatar = 'images/me.png';

  const About({super.key});

  @override
  Widget build(BuildContext context) => ResponsiveWidget(
        desktopScreen: Container(
          color: Colors.white,
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * .15,
            vertical: 100,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(1000),
                    child: Container(
                      color: AppColors.greyLight,
                      child: Image.asset(
                        _avatar,
                        width: 300,
                        height: 300,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          AppStrings.l001AboutMe.toUpperCase().toString(),
                          style: const TextStyle(
                            color: AppColors.primaryColor,
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            fontFamily: AppConstants.fontFamilyPoppins,
                          ),
                        ),
                        Text(
                          AppStrings.l007DetailedAboutMe,
                          style:
                              Theme.of(context).textTheme.bodyText2!.copyWith(
                                    color: Colors.black.withOpacity(.7),
                                    fontSize: 17,
                                    fontFamily: AppConstants.fontFamilyPoppins,
                                  ),
                        ),
                        const SizedBox(height: 30),
                        Row(
                          children: [
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
                              onPressed: () {},
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 2.0),
                                child: Text(AppStrings.b002HireMeNow,
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelLarge!
                                        .copyWith(
                                          color: AppColors.primaryColor,
                                          fontSize: 15,
                                          height: 1.8,
                                          fontFamily:
                                              AppConstants.fontFamilyPoppins,
                                        )),
                              ),
                            ),
                            const SizedBox(width: 20),
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
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 2.0),
                                child: Text(
                                  AppStrings.b003ViewResume,
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelLarge!
                                      .copyWith(
                                        color: AppColors.primaryColor,
                                        fontSize: 15,
                                        height: 1.8,
                                        fontFamily:
                                            AppConstants.fontFamilyPoppins,
                                      ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 100),
              Text(
                AppStrings.h001MySkills,
                style: AppStyles.title.copyWith(
                  color: AppColors.primaryColor,
                  height: 1.8,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  fontFamily: AppConstants.fontFamilyPoppins,
                ),
              ),
              Container(width: 100, height: 2, color: AppColors.primaryColor),
              const SizedBox(height: 3),
              Container(width: 75, height: 2, color: AppColors.primaryColor),
              const SizedBox(height: 50),
              Wrap(
                spacing: 25,
                runSpacing: 25,
                runAlignment: WrapAlignment.spaceBetween,
                children: SKILLS.map(_buildSkill).toList(),
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
              ClipRRect(
                borderRadius: BorderRadius.circular(1000),
                child: Container(
                  color: AppColors.greyLight,
                  child: Image.asset(
                    _avatar,
                    width: 150,
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                AppStrings.l001AboutMe.toUpperCase().toString(),
                style: const TextStyle(
                    color: AppColors.primaryColor,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    fontFamily: AppConstants.fontFamilyPoppins),
              ),
              Text(
                AppStrings.l007DetailedAboutMe,
                style: Theme.of(context).textTheme.bodyText2!.copyWith(
                      color: Colors.black.withOpacity(.7),
                      fontSize: 13,
                      fontFamily: AppConstants.fontFamilyPoppins,
                    ),
                textAlign: TextAlign.center,
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
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 2.0),
                  child: Text(AppStrings.b002HireMeNow,
                      style: Theme.of(context).textTheme.labelLarge!.copyWith(
                            color: AppColors.primaryColor,
                            fontSize: 15,
                            height: 1.8,
                            fontFamily: AppConstants.fontFamilyPoppins,
                          )),
                ),
              ),
              const SizedBox(height: 20),
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
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 2.0),
                  child: Text(AppStrings.b003ViewResume,
                      style: Theme.of(context).textTheme.labelLarge!.copyWith(
                            color: AppColors.primaryColor,
                            fontSize: 15,
                            height: 1.8,
                            fontFamily: AppConstants.fontFamilyPoppins,
                          )),
                ),
              ),
              const SizedBox(height: 50),
              Text(AppStrings.h001MySkills,
                  style: AppStyles.title.copyWith(
                    color: AppColors.primaryColor,
                    height: 1.8,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    fontFamily: AppConstants.fontFamilyPoppins,
                  )),
              Container(width: 75, height: 2, color: AppColors.primaryColor),
              const SizedBox(height: 3),
              Container(width: 50, height: 2, color: AppColors.primaryColor),
              const SizedBox(height: 25),
              Wrap(
                spacing: 10,
                runSpacing: 10,
                alignment: WrapAlignment.center,
                runAlignment: WrapAlignment.spaceBetween,
                children: SKILLS.map(_buildSkill).toList(),
              ),
            ],
          ),
        ),
      );

  void _downloadCV() {
    kIsWeb
        ? html.window.open(AppConstants.cv, "pdf")
        : openURL(AppConstants.cv);
  }

  Widget _buildSkill(Skill skill) => Chip(
      label: Text(skill.name!,
          style: const TextStyle(
              color: Colors.black,
              fontSize: 13,
              fontFamily: AppConstants.fontFamilyPoppins)));
}
