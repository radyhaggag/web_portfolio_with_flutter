import 'package:flutter/material.dart';

import '../../../../core/utils/app_enums.dart';
import '../../../../core/utils/app_extensions.dart';
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
            AppBarHeaders.contact.getString(),
            style: AppStyles.s32,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          AppStrings.contactMsg,
          style: AppStyles.s18,
          softWrap: true,
        ),
      ],
    );
  }
}
