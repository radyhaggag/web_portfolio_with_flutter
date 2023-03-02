import 'package:flutter/material.dart';

import '../../../../core/utils/app_extensions.dart';
import '../../../../core/utils/app_enums.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/app_styles.dart';

class AboutMeMsg extends StatelessWidget {
  const AboutMeMsg({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppBarHeaders.aboutMe.getString(),
          style: AppStyles.s32,
        ),
        const SizedBox(height: 8),
        Text(
          AppStrings.aboutMeMsg,
          style: context.width < DeviceType.mobile.getMaxWidth()
              ? AppStyles.s14
              : AppStyles.s18,
          softWrap: true,
        ),
      ],
    );
  }
}
