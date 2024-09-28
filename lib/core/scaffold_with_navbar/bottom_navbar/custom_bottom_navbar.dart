import 'package:eaythes_mobile/core/constants/styles.dart';
import 'package:eaythes_mobile/core/scaffold_with_navbar/bottom_navbar/custom_bottom_navbar_item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../utils/routes_utils.dart';

BottomNavigationBar customBottomNavbar(
  final StatefulNavigationShell navigationShell,
  void Function(int)? onTap,
) {
  return BottomNavigationBar(
    items: Pages.values.map((page) {
      return customBottomNavbarItem(page: page);
    }).toList(),
    currentIndex: navigationShell.currentIndex,
    onTap: onTap,
  );
}
