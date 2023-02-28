import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/app_extensions.dart';

import '../../../../core/utils/app_enums.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/app_styles.dart';

class IntroText extends StatelessWidget {
  const IntroText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          AppStrings.helloIM,
          style: context.width < DeviceType.smallScreenLaptop.getMaxWidth()
              ? AppStyles.s16
              : AppStyles.s32,
        ),
        const SizedBox(height: 6),
        Text(
          AppStrings.developerName,
          style: context.width < DeviceType.smallScreenLaptop.getMaxWidth()
              ? AppStyles.s24
              : AppStyles.s52,
        ),
        const SizedBox(height: 12),
        Text(
          AppStrings.introMsg,
          style: context.width < DeviceType.smallScreenLaptop.getMaxWidth()
              ? AppStyles.s14
              : AppStyles.s18,
        ),
      ],
    );
  }
}
