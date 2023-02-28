import 'package:flutter/material.dart';

import '../../../../core/utils/app_extensions.dart';
import '../../../../data/models/responsive_size.dart';
import 'circle_image_border.dart';
import 'intro_image.dart';

class IntroCircleImageBox extends StatelessWidget {
  const IntroCircleImageBox({super.key});

  @override
  Widget build(BuildContext context) {
    final responsiveSize = ResponsiveSize(
      deviceWidth: context.width,
      ipadSize: 318,
      smallScreenSize: 430,
      largeScreenSize: 560,
    );
    return SizedBox(
      height: responsiveSize.getSize(),
      child: Stack(
        alignment: Alignment.centerRight,
        children: const [
          CircleImageBorder(),
          IntroImage(),
        ],
      ),
    );
  }
}
