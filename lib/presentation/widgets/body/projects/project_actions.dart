import 'package:flutter/material.dart';
import 'package:portfolio/data/models/project.dart';
import 'package:universal_html/html.dart' as html;

import '../../../../core/utils/app_colors.dart';
import '../../../../core/widgets/custom_button.dart';

class ProjectActions extends StatelessWidget {
  const ProjectActions({super.key, required this.project});

  final Project project;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      fit: FlexFit.tight,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          if (project.previewLink != null)
            Expanded(
              child: CustomButton(
                label: 'Preview',
                backgroundColor: AppColors.primaryColor.withOpacity(0.5),
                onPressed: () {
                  html.window.open(project.previewLink!, '_blank');
                },
              ),
            ),
          if (project.githubRepoLink != null) ...[
            if (project.previewLink != null) const SizedBox(width: 18),
            Expanded(
              child: CustomButton(
                label: 'Github',
                borderColor: AppColors.primaryColor,
                onPressed: () {
                  html.window.open(project.githubRepoLink!, '_blank');
                },
              ),
            ),
          ],
          if (project.googlePlay != null) ...[
            if (project.previewLink != null || project.githubRepoLink != null)
              const SizedBox(width: 18),
            Expanded(
              child: CustomButton(
                label: 'Play Store',
                textColor: AppColors.white,
                backgroundColor: AppColors.blueColor,
                borderColor: AppColors.primaryColor,
                onPressed: () {
                  html.window.open(project.googlePlay!, '_blank');
                },
              ),
            ),
          ],
          if (project.previewLink == null &&
              project.githubRepoLink == null &&
              project.googlePlay == null)
            Expanded(
              child: CustomButton(
                label: 'No actions available',
                borderColor: AppColors.primaryColor,
                onPressed: () {},
              ),
            )
        ],
      ),
    );
  }
}
