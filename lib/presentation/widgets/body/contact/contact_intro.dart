import 'package:flutter/material.dart';
import 'package:portfolio/presentation/widgets/body/contact/social_medial_icons.dart';

import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/app_styles.dart';

class ContactIntro extends StatelessWidget {
  const ContactIntro({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FittedBox(
          child: Text(
            AppStrings.contactWithMe,
            style: AppStyles.s32,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          AppStrings.contactMsg,
          style: AppStyles.s18,
          softWrap: true,
        ),
        const SizedBox(height: 8),
        const SocialMediaIcons(),
      ],
    );
  }
}
