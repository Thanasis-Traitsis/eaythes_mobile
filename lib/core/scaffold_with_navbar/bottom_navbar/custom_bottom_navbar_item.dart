import 'package:eaythes_mobile/core/utils/routes_utils.dart';
import 'package:flutter/material.dart';

import '../../constants/styles.dart';

BottomNavigationBarItem customBottomNavbarItem({
  required Pages page,
}) {
  return BottomNavigationBarItem(
    icon: Padding(
      padding: const EdgeInsets.only(top: padding / 2),
      child: Icon(page.screenIcon),
    ),
    label: page.screenTitle,
  );
}
