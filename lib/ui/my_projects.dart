import 'package:flutter/material.dart';
import 'package:portfolio/config/constants.dart';
import 'package:portfolio/utils/constants.dart';

import '../config/colors.dart';
import '../config/styles.dart';
import '../data/projects.dart';
import 'responsive_widget.dart';

class MyProjects extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      desktopScreen: Container(
        color: AppColors.greyLight,
        padding: const EdgeInsets.symmetric(vertical: 100),
        child: Column(
          children: [
            Text(
              'MY PROJECTS',
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
            ...PROJECTS.map((p) => _buildProject(context, p)).toList(),
          ],
        ),
      ),
      mobileScreen: Container(
        color: AppColors.greyLight,
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * .15,
          vertical: 50,
        ),
        child: Column(
          children: [
            Text(
              'MY PROJECTS',
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
            Wrap(
              spacing: 5,
              runSpacing: 5,
              children: PROJECTS.map((p) => _buildProject(context, p)).toList(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProject(BuildContext context, Project project) =>
      ResponsiveWidget(
        desktopScreen: SizedBox(
          width: MediaQuery.of(context).size.width * .7,
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.width * .3,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Image.asset(project.image!),
                    ),
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width * .075),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.width * .01,
                        ),
                        Text(
                          project.name!,
                          style: AppStyles.title.copyWith(
                            color: AppColors.black,
                            height: 1.8,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            fontFamily: AppConstants.fontFamilyPoppins,
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.width * .01,
                        ),
                        Text(project.description!,
                            style: AppStyles.description.copyWith(
                              height: 1.8,
                              fontSize: 15,
                              fontFamily: AppConstants.fontFamilyPoppins,
                            )),
                        Wrap(
                          spacing: 10,
                          runSpacing: 10,
                          children: project.skills!
                              .map((s) => Chip(
                                  label: Text(s,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      softWrap: false,
                                      style: const TextStyle(
                                          color: Colors.black,
                                          fontSize: 13,
                                          fontFamily:
                                              AppConstants.fontFamilyPoppins))))
                              .toList(),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.width * .025,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            project.androidUrl!.isNotEmpty
                                ? ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.white,
                                      foregroundColor: AppColors.primaryColor,
                                      elevation: 3,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 30, vertical: 20),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(32.0)),
                                      minimumSize:
                                          const Size(100, 40), //////// HERE
                                    ),
                                    onPressed: () {
                                      openURL(project.androidUrl!);
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.only(bottom: 2.0),
                                      child: Text('Android',
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelLarge!
                                              .copyWith(
                                                color: AppColors.primaryColor,
                                                fontSize: 13,
                                                height: 1.8,
                                                fontFamily: AppConstants
                                                    .fontFamilyPoppins,
                                              )),
                                    ),
                                  )
                                : const SizedBox.shrink(),
                            project.androidUrl!.isNotEmpty
                                ? const SizedBox(
                                    width: 5,
                                  )
                                : const SizedBox.shrink(),
                            project.iOSUrl!.isNotEmpty
                                ? ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.white,
                                      foregroundColor: AppColors.primaryColor,
                                      elevation: 3,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 30, vertical: 20),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(32.0)),
                                      minimumSize:
                                          const Size(100, 40), //////// HERE
                                    ),
                                    onPressed: () {
                                      openURL(project.iOSUrl!);
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.only(bottom: 2.0),
                                      child: Text('iOS',
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelLarge!
                                              .copyWith(
                                                color: AppColors.primaryColor,
                                                fontSize: 13,
                                                height: 1.8,
                                                fontFamily: AppConstants
                                                    .fontFamilyPoppins,
                                              )),
                                    ),
                                  )
                                : const SizedBox.shrink(),
                            project.iOSUrl!.isNotEmpty
                                ? const SizedBox(
                                    width: 5,
                                  )
                                : const SizedBox.shrink(),
                            project.webUrl!.isNotEmpty
                                ? ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.white,
                                      foregroundColor: AppColors.primaryColor,
                                      elevation: 3,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 30, vertical: 20),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(32.0)),
                                      minimumSize:
                                          const Size(100, 40), //////// HERE
                                    ),
                                    onPressed: () {
                                      openURL(project.webUrl!);
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.only(bottom: 2.0),
                                      child: Text('Web',
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelLarge!
                                              .copyWith(
                                                color: AppColors.primaryColor,
                                                fontSize: 13,
                                                height: 1.8,
                                                fontFamily: AppConstants
                                                    .fontFamilyPoppins,
                                              )),
                                    ),
                                  )
                                : const SizedBox.shrink()
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Divider(
                color: AppColors.black.withOpacity(.1),
                height: 20,
                thickness: 1,
              ),
            ],
          ),
        ),
        mobileScreen: SizedBox(
          width: MediaQuery.of(context).size.width * .7,
          child: Column(
            children: [
              SizedBox(
                  height: MediaQuery.of(context).size.width * .75,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Image.asset(project.image!),
                  )),
              SizedBox(width: MediaQuery.of(context).size.width * .075),
              SizedBox(
                height: MediaQuery.of(context).size.width * .01,
              ),
              Text(project.name!,
                  style: AppStyles.title.copyWith(
                    color: AppColors.black,
                    height: 1.8,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: AppConstants.fontFamilyPoppins,
                  )),
              SizedBox(
                height: MediaQuery.of(context).size.width * .01,
              ),
              Text(project.description!,
                  textAlign: TextAlign.center,
                  style: AppStyles.description.copyWith(
                    color: AppColors.black,
                    height: 1.8,
                    fontSize: 15,
                    fontFamily: AppConstants.fontFamilyPoppins,
                  )),
              Wrap(
                spacing: 10,
                runSpacing: 10,
                alignment: WrapAlignment.center,
                children: project.skills!
                    .map((s) => Chip(
                        label: Text(s,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            softWrap: false,
                            style: const TextStyle(
                                color: Colors.black,
                                fontSize: 13,
                                fontFamily: AppConstants.fontFamilyPoppins))))
                    .toList(),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width * .025,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  project.androidUrl!.isNotEmpty
                      ? ElevatedButton(
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
                          onPressed: () {
                            openURL(project.androidUrl!);
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 2.0),
                            child: Text('Android',
                                style: Theme.of(context)
                                    .textTheme
                                    .labelLarge!
                                    .copyWith(
                                      color: AppColors.primaryColor,
                                      fontSize: 13,
                                      height: 1.8,
                                      fontFamily: AppConstants.fontFamilyPoppins,
                                    )),
                          ),
                        )
                      : const SizedBox.shrink(),
                  project.androidUrl!.isNotEmpty
                      ? const SizedBox(
                          width: 5,
                        )
                      : const SizedBox.shrink(),
                  project.iOSUrl!.isNotEmpty
                      ? ElevatedButton(
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
                          onPressed: () {
                            openURL(project.iOSUrl!);
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 2.0),
                            child: Text('iOS',
                                style: Theme.of(context)
                                    .textTheme
                                    .labelLarge!
                                    .copyWith(
                                      color: AppColors.primaryColor,
                                      fontSize: 13,
                                      height: 1.8,
                                      fontFamily: AppConstants.fontFamilyPoppins,
                                    )),
                          ),
                        )
                      : const SizedBox.shrink(),
                  project.iOSUrl!.isNotEmpty
                      ? const SizedBox(
                          width: 5,
                        )
                      : const SizedBox.shrink(),
                  project.webUrl!.isNotEmpty
                      ? ElevatedButton(
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
                          onPressed: () {
                            openURL(project.webUrl!);
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 2.0),
                            child: Text('Web',
                                style: Theme.of(context)
                                    .textTheme
                                    .labelLarge!
                                    .copyWith(
                                      color: AppColors.primaryColor,
                                      fontSize: 13,
                                      height: 1.8,
                                      fontFamily: AppConstants.fontFamilyPoppins,
                                    )),
                          ),
                        )
                      : const SizedBox.shrink()
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Divider(
                color: AppColors.black.withOpacity(.1),
                height: 50,
                thickness: 1,
              ),
            ],
          ),
        ),
      );
}
