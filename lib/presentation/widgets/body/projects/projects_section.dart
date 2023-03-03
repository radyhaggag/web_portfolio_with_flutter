import 'package:flutter/material.dart';

import 'projects_grid.dart';
import 'projects_intro.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 80),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          ProjectsIntro(),
          SizedBox(height: 52),
          ProjectsGrid(),
        ],
      ),
    );
  }
}
