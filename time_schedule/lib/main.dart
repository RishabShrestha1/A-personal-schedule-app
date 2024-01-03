import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:time_schedule/Pages/Homepage.dart';
import 'package:time_schedule/Pages/Intropage.dart';
import 'package:time_schedule/Theme/themedata.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (context, orientation, screenType) {
      return MaterialApp(
          theme: customTheme,
          debugShowCheckedModeBanner: false,
          home: const IntroPage(),
          routes: {
            '/home': (context) => const Homepage(),
            '/intro': (context) => const IntroPage(),
          });
    });
  }
}
