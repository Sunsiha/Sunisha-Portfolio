import 'package:flutter/material.dart';
import 'package:portfolio/config/constants.dart';

import '../data/projects.dart';
import 'icon.dart';
import 'responsive_widget.dart';

class Statistics extends StatelessWidget {
  const Statistics({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      desktopScreen: Container(
        height: 400,
        color: Colors.black.withOpacity(.7),
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * .15,
        ),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          _buildStatistic(
              context, 'icons/briefcase.png', '8+', 'Years of Experience'),
          _buildStatistic(context, 'icons/menu.png', '${PROJECTS.length}+',
              'Projects Done'),
          _buildStatistic(context, 'icons/happy.png', '50+', 'Happy Clients'),
          _buildStatistic(context, 'icons/coffee.png', '∞', 'Coffee Cups'),
        ]),
      ),
      mobileScreen: Container(
        color: Colors.black54,
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * .15,
          vertical: 50,
        ),
        child: Column(
          children: [
            _buildStatistic(
                context, 'icons/briefcase.png', '8+', 'Years of Experience'),
            const SizedBox(height: 50),
            _buildStatistic(context, 'icons/menu.png', '${PROJECTS.length}+',
                'Projects Done'),
            const SizedBox(height: 50),
            _buildStatistic(context, 'icons/happy.png', '50+', 'Happy Clients'),
            const SizedBox(height: 50),
            _buildStatistic(context, 'icons/coffee.png', '∞', 'Coffee Cups'),
          ],
        ),
      ),
    );
  }

  Widget _buildStatistic(
      BuildContext context, String icon, String total, String description) {
    return ResponsiveWidget(
      desktopScreen: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          AppIcon(
            icon,
            size: 50,
            color: Colors.white,
          ),
          const SizedBox(height: 5),
          Text(
            total,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 50,
              fontFamily: AppConstants.fontFamilyPoppins,
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            description,
            style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w700,
                fontFamily: AppConstants.fontFamilyPoppins),
          ),
        ],
      ),
      mobileScreen: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          AppIcon(
            icon,
            size: 40,
            color: Colors.white,
          ),
          const SizedBox(height: 5),
          Text(
            total,
            style: const TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.w800,
                fontFamily: AppConstants.fontFamilyPoppins),
          ),
          const SizedBox(height: 5),
          Text(
            description,
            style: const TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.w700,
                fontFamily: AppConstants.fontFamilyPoppins),
          ),
        ],
      ),
    );
  }
}
