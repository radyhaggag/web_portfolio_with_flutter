import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/app_colors.dart';
import 'package:portfolio/core/utils/app_extensions.dart';
import 'package:universal_html/html.dart' as html;

import '../../../core/utils/app_strings.dart';
import '../../../core/utils/app_styles.dart';

class DeveloperNameBtn extends StatelessWidget {
  const DeveloperNameBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        html.window.location.reload();
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 13),
        child: Text(
          AppStrings.developerName,
          style: context.width > 768
              ? AppStyles.s28
              : AppStyles.s24.copyWith(color: AppColors.primaryColor),
        ),
      ),
    );
  }
}
