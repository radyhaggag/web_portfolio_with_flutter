import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../data/models/project.dart';
import 'project_actions.dart';
import 'project_image.dart';

class ProjectItem extends StatelessWidget {
  const ProjectItem({super.key, required this.project});
  final Project project;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.transparent,
          border: Border.all(color: AppColors.primaryColor, width: 3)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProjectImage(imageUrl: project.imageUrl),
          const SizedBox(height: 16),
          FittedBox(
            child: Text(
              project.name,
              textAlign: TextAlign.center,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
          ),
          const SizedBox(height: 8),
          Expanded(
            child: AutoSizeText(
              project.description,
              minFontSize: 14,
              maxLines: 4,
            ),
          ),
          const SizedBox(height: 8),
          // if (project.previewLink != null || project.githubRepoLink != null)
          ProjectActions(project: project)
        ],
      ),
    );
  }
}
