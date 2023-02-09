import 'package:flutter/material.dart';

import 'config/colors.dart';
import 'ui/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sunisha - Developer',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        accentColor: AppColors.primaryColor,
        primaryColor: AppColors.primaryColor,
        textSelectionTheme:
            const TextSelectionThemeData(cursorColor: AppColors.primaryColor),
        iconTheme: IconThemeData(color: Colors.white),
        //<-- SEE HERE
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Home(),
    );
  }
}
