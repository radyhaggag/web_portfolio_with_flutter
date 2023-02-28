import 'package:flutter/material.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_constants.dart';
import '../../../../core/utils/app_enums.dart';
import '../../../../core/utils/app_extensions.dart';
import '../../../../data/models/responsive_size.dart';
import 'intro_circle_image_box.dart';
import 'intro_text.dart';

class IntroSection extends StatelessWidget {
  const IntroSection({super.key});

  @override
  Widget build(BuildContext context) {
    final responsiveSize = ResponsiveSize(
      deviceWidth: context.width,
      ipadSize: 18,
      smallScreenSize: 120,
      largeScreenSize: 60,
    );
    return SizedBox(
      height: context.height - AppConstants.appBarHeight,
      width: context.width,
      child: Stack(
        children: [
          context.width < DeviceType.ipad.getMaxWidth()
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    IntroText(),
                    SizedBox(height: 50),
                    IntroCircleImageBox(),
                  ],
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    IntroText(),
                    IntroCircleImageBox(),
                  ],
                ),
          Positioned(
            bottom: responsiveSize.getSize(),
            child: Container(
              width: context.width,
              height: 128,
              color: AppColors.appBarColor,
            ),
          ),
        ],
      ),
    );
  }
}
