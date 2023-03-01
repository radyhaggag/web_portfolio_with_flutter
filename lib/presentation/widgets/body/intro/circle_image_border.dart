import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_extensions.dart';
import '../../../../data/models/responsive_size.dart';

class CircleImageBorder extends StatelessWidget {
  const CircleImageBorder({super.key});

  @override
  Widget build(BuildContext context) {
    final responsiveSize = ResponsiveSize(
      deviceWidth: context.width,
      mobileSize: context.width * .62,
      ipadSize: context.width * .4,
      smallScreenSize: context.width * .29,
    );
    return Container(
      width: responsiveSize.getSize(),
      height: responsiveSize.getSize(),
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        shape: BoxShape.circle,
      ),
    );
  }
}
