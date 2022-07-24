import 'package:flutter/material.dart';
import 'package:navigator_with_data/main.dart';
import 'package:navigator_with_data/secscreen.dart';
import 'package:navigator_with_data/third.dart';

class MyRoute {
  static Route generateRoute(RouteSettings settings) {
    if (settings.name == MyApp.myPage) {
      return MaterialPageRoute(
          settings: settings, builder: (context) => const MyApp());
    } else if (settings.name == ThirdPage.mypage) {
      return MaterialPageRoute(
        builder: (context) => ThirdPage(),
        settings: settings,
      );
    } else {
      return MaterialPageRoute(
          builder: (context) => ThirdPage(), settings: settings);
    }
  }
}
