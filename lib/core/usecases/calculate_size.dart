import 'package:flutter/material.dart';

import '../utils/breakpoints_utils.dart';

double calculateSize(BuildContext context, double baseSize) {
  final deviceType = getDeviceType(context);

  switch (deviceType) {
    case DeviceType.tablet:
      return baseSize * 1.2;
    case DeviceType.desktop:
      return baseSize * 1.4;
    default:
      return baseSize;
  }
}
