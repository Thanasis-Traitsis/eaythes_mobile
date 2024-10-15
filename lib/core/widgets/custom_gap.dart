import 'package:flutter/material.dart';

import 'package:eaythes_mobile/core/usecases/calculate_size.dart';

class CustomGap extends StatelessWidget {
  final double? width;
  final double? height;

  const CustomGap({
    super.key,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width != null ? calculateSize(context, width!) : null,
      height: height != null ? calculateSize(context, height!) : null,
    );
  }
}
