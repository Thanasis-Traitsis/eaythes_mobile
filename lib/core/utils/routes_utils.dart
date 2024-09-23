import 'package:flutter/material.dart';

enum Pages {
  home(
    screenPath: '/',
    screenName: 'home',
    screenTitle: 'Αρχική',
    screenIcon: Icons.home,
  ),
  blogs(
    screenPath: '/blogs',
    screenName: 'blogs',
    screenTitle: 'Ανακοινώσεις',
    screenIcon: Icons.article,
  );

  final String screenPath;
  final String screenName;
  final String screenTitle;
  final IconData screenIcon;

  const Pages({
    required this.screenPath,
    required this.screenName,
    required this.screenTitle,
    required this.screenIcon,
  });
}
