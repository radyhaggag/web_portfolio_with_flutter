import 'package:flutter/material.dart';

import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/app_styles.dart';

class ProjectsIntro extends StatelessWidget {
  const ProjectsIntro({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FittedBox(
          child: Text(
            AppStrings.featuredProjects,
            style: AppStyles.s32,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          AppStrings.projectsMsg,
          style: AppStyles.s18,
          softWrap: true,
        ),
      ],
    );
  }
}
