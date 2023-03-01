import 'package:flutter/material.dart';
import '../../../../core/utils/app_enums.dart';
import '../../../../core/utils/app_extensions.dart';
import 'intro_circle_image_box.dart';
import 'intro_text.dart';

class IntroSection extends StatelessWidget {
  const IntroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: context.height * .12),
      child: context.width < DeviceType.mobile.getMaxWidth()
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                IntroCircleImageBox(),
                SizedBox(height: 50),
                IntroText(),
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                IntroText(),
                IntroCircleImageBox(),
              ],
            ),
    );
  }
}
