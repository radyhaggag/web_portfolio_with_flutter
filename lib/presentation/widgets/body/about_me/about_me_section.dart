import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/app_enums.dart';
import 'package:portfolio/core/utils/app_extensions.dart';
import 'package:portfolio/core/utils/app_strings.dart';
import 'package:portfolio/core/utils/app_styles.dart';

class AboutMeSection extends StatelessWidget {
  const AboutMeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
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
          const SizedBox(height: 8),
          Row(
            children: [
              Text(
                AppStrings.numOfExperience,
                style: context.width < DeviceType.mobile.getMaxWidth()
                    ? AppStyles.s32.copyWith(fontSize: 48)
                    : AppStyles.s32.copyWith(fontSize: 96),
              ),
              const SizedBox(width: 20),
              Flexible(
                child: Text(
                  AppStrings.experienceMsg,
                  style: _getExpMsgStyle(context.width),
                  softWrap: true,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  _getExpMsgStyle(double deviceWidth) {
    if (deviceWidth < DeviceType.mobile.getMaxWidth()) {
      return AppStyles.s16.copyWith(fontWeight: FontWeight.w500);
    } else if (deviceWidth < DeviceType.ipad.getMaxWidth()) {
      return AppStyles.s18;
    } else {
      return AppStyles.s24.copyWith(fontWeight: FontWeight.w500);
    }
  }
}
