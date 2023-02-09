import 'package:flutter/material.dart';
import 'package:portfolio/config/strings.dart';
import 'package:portfolio/utils/constants.dart';

import '../config/colors.dart';
import '../config/constants.dart';
import '../data/projects.dart';
import 'icon.dart';
import 'responsive_widget.dart';

class Footer extends StatelessWidget {
  final String _getInTouch =
      "You have an idea, I am here to turn your dream into real digital solution. ❤";
    final String _description = '👋 Hello.. 🔭 I’m currently working on multi-platform flutter applications as well as additional client value prototypes. I used flutter to create this portfolio. For the past few years, flutter has been my primary technology. In addition to flutter, I have experience with Android development, web development (React), a working knowledge of Swift for iOS, and python.  I\'m always keen to learn new technologies and improve my knowledge. Thanks for reaching the end of my long overview ❤.  If I sound like the type of developer that you need, do reach out for a free feasibility analysis and to see how we can work together🤝.';

  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      desktopScreen: Container(
        color: Colors.black,
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * .15,
          vertical: 30,
        ),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Get in touch
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 2,
                            height: 20,
                            color: AppColors.primaryColor,
                          ),
                          const SizedBox(width: 7.5),
                          const Text(
                            'GET IN TOUCH',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: AppConstants.fontFamilyPoppins,
                              fontWeight: FontWeight.w700,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 20),
                      Text(
                        _getInTouch,
                        style: TextStyle(
                          color: AppColors.greyLight,
                          fontFamily: AppConstants.fontFamilyPoppins,
                          fontSize: 13,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        'Email Address',
                        style: TextStyle(
                          color: AppColors.greyLight,
                          fontWeight: FontWeight.w800,
                          fontFamily: AppConstants.fontFamilyPoppins,
                        ),
                      ),
                      const SizedBox(height: 7),
                      Text(
                        AppConstants.mail,
                        style: TextStyle(
                          color: AppColors.greyLight,
                          fontFamily: AppConstants.fontFamilyPoppins,
                          fontSize: 13,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        'Phone Number',
                        style: TextStyle(
                          color: AppColors.greyLight,
                          fontFamily: AppConstants.fontFamilyPoppins,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      const SizedBox(height: 7),
                      Text(
                        AppConstants.phone,
                        style: TextStyle(
                          color: AppColors.greyLight,
                          fontFamily: AppConstants.fontFamilyPoppins,
                          fontSize: 13,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        'Location',
                        style: TextStyle(
                          color: AppColors.greyLight,
                          fontWeight: FontWeight.w800,
                          fontFamily: AppConstants.fontFamilyPoppins,
                        ),
                      ),
                      const SizedBox(height: 7),
                      Text(
                        AppConstants.location,
                        style: TextStyle(
                          color: AppColors.greyLight,
                          fontFamily: AppConstants.fontFamilyPoppins,
                          fontSize: 13,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(width: 20),
                // Aout me
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 2,
                            height: 20,
                            color: AppColors.primaryColor,
                          ),
                          const SizedBox(width: 7.5),
                          Text(
                            AppStrings.l001AboutMe.toUpperCase().toString(),
                            style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontFamily: AppConstants.fontFamilyPoppins),
                          )
                        ],
                      ),
                      const SizedBox(height: 20),
                      Text(
                        _description,
                        style: TextStyle(
                            color: AppColors.greyLight,
                            fontSize: 13,
                            height: 2,
                            fontFamily: AppConstants.fontFamilyPoppins),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 20),
                // My projects
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 2,
                            height: 20,
                            color: AppColors.primaryColor,
                          ),
                          const SizedBox(width: 7.5),
                          const Text(
                            'RECENT PROJECTS',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontFamily: AppConstants.fontFamilyPoppins),
                          )
                        ],
                      ),
                      const SizedBox(height: 20),
                      Wrap(
                        spacing: 10,
                        runSpacing: 10,
                        children: PROJECTS
                            .take(2)
                            .map((p) => _buildProject(context, p))
                            .toList(),
                      )
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Divider(
              color: AppColors.greyLight!.withOpacity(.75),
              thickness: .5,
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Proudly powered by Sunisha ©${DateTime.now().year}',
                  style: TextStyle(
                      color: AppColors.greyLight!.withOpacity(.75),
                      fontFamily: AppConstants.fontFamilyPoppins),
                ),
                Row(children: _socialMedia()),
              ],
            )
          ],
        ),
      ),
      mobileScreen: Container(
        color: Colors.black,
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * .15,
          vertical: 30,
        ),
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      width: 2,
                      height: 20,
                      color: AppColors.primaryColor,
                    ),
                    const SizedBox(width: 7.5),
                    const Text(
                      'GET IN TOUCH',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontFamily: AppConstants.fontFamilyPoppins),
                    )
                  ],
                ),
                const SizedBox(height: 20),
                Text(
                  _getInTouch,
                  style: TextStyle(
                    color: AppColors.greyLight,
                    fontFamily: AppConstants.fontFamilyPoppins,
                    fontSize: 13,
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  'Email Address',
                  style: TextStyle(
                    color: AppColors.greyLight,
                    fontFamily: AppConstants.fontFamilyPoppins,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                const SizedBox(height: 7),
                Text(
                  AppConstants.mail,
                  style: TextStyle(
                    color: AppColors.greyLight,
                    fontFamily: AppConstants.fontFamilyPoppins,
                    fontSize: 13,
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  'Phone Number',
                  style: TextStyle(
                    color: AppColors.greyLight,
                    fontFamily: AppConstants.fontFamilyPoppins,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                const SizedBox(height: 7),
                Text(
                  AppConstants.phone,
                  style: TextStyle(
                    color: AppColors.greyLight,
                    fontFamily: AppConstants.fontFamilyPoppins,
                    fontSize: 13,
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  'Location',
                  style: TextStyle(
                    color: AppColors.greyLight,
                    fontWeight: FontWeight.w800,
                    fontFamily: AppConstants.fontFamilyPoppins,
                  ),
                ),
                const SizedBox(height: 7),
                Text(
                  AppConstants.location,
                  style: TextStyle(
                    color: AppColors.greyLight,
                    fontFamily: AppConstants.fontFamilyPoppins,
                    fontSize: 13,
                  ),
                )
              ],
            ),
            const SizedBox(height: 30),
            // Aout me
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      width: 2,
                      height: 20,
                      color: AppColors.primaryColor,
                    ),
                    const SizedBox(width: 7.5),
                    Text(
                      AppStrings.l001AboutMe.toUpperCase().toString(),
                      style: const TextStyle(
                        color: Colors.white,
                        fontFamily: AppConstants.fontFamilyPoppins,
                        fontWeight: FontWeight.w700,
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 20),
                Text(
                  _description,
                  style: TextStyle(
                    color: AppColors.greyLight,
                    fontSize: 13,
                    height: 2,
                    fontFamily: AppConstants.fontFamilyPoppins,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            // My projects
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      width: 2,
                      height: 20,
                      color: AppColors.primaryColor,
                    ),
                    const SizedBox(width: 7.5),
                    const Text(
                      'RECENT PROJECTS',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: AppConstants.fontFamilyPoppins,
                        fontWeight: FontWeight.w700,
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 20),
                Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  children: PROJECTS
                      .take(2)
                      .map((p) => _buildProject(context, p))
                      .toList(),
                )
              ],
            ),
            const SizedBox(height: 30),
            Divider(
              color: AppColors.greyLight!.withOpacity(.75),
              thickness: .5,
            ),
            const SizedBox(height: 20),
            FittedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: _socialMedia(),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'Proudly powered by Sunisha ©${DateTime.now().year}',
              style: TextStyle(
                color: AppColors.greyLight!.withOpacity(.75),
                fontFamily: AppConstants.fontFamilyPoppins,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProject(BuildContext context, Project project) => InkWell(
        onTap: () {
          openURL(project.androidUrl!);
        },
        child: ResponsiveWidget(
          desktopScreen: Container(
            color: AppColors.greyLight,
            padding: const EdgeInsets.all(15),
            width: MediaQuery.of(context).size.width * .1,
            height: MediaQuery.of(context).size.width * .1,
            child: Image.asset(project.image!),
          ),
          mobileScreen: Container(
            color: AppColors.greyLight,
            padding: const EdgeInsets.all(15),
            width: MediaQuery.of(context).size.width * .2,
            height: MediaQuery.of(context).size.width * .2,
            child: Image.asset(project.image!),
          ),
        ),
      );

  List<Widget> _socialMedia() => [
        InkWell(
          onTap: () async {
            openURL(AppConstants.github);
          },
          child: const AppIcon('icons/github.png'),
        ),
        const SizedBox(width: 20),
        InkWell(
          onTap: () {
            openURL(AppConstants.linkedin);
          },
          child: const AppIcon('icons/linkedin.png'),
        ),
        const SizedBox(width: 20),
        InkWell(
          onTap: () {
            openURL(AppConstants.stackoverflow);
          },
          child: const AppIcon('icons/stackoverflow.png'),
        ),
        const SizedBox(width: 20),
        InkWell(
          onTap: () {
            openURL(AppConstants.instagram);
          },
          child: const AppIcon('icons/instagram.png'),
        ),
      ];
}
