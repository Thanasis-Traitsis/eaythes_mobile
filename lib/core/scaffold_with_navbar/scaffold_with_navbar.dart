import 'package:eaythes_mobile/core/constants/assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../constants/styles.dart';
import 'appbar/custom_appbar.dart';
import 'bottom_navbar/custom_bottom_navbar.dart';

class ScaffoldWithNavBar extends StatelessWidget {
  const ScaffoldWithNavBar({
    required this.navigationShell,
    Key? key,
  }) : super(key: key ?? const ValueKey<String>('ScaffoldWithNavBar'));

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        imagePath: logoImg,
      ),
      body: SafeArea(child: navigationShell),
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(borderRadius),
          topRight: Radius.circular(borderRadius),
        ),
        child: customBottomNavbar(
          navigationShell,
          (int index) => onTap(context, index),
        ),
      ),
    );
  }

  void onTap(BuildContext context, int index) {
    if (index == navigationShell.currentIndex) {
      return;
    }
    navigationShell.goBranch(
      index,
      initialLocation: index == navigationShell.currentIndex,
    );
  }
}
