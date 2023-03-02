import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_extensions.dart';
import '../../../../core/widgets/custom_divider.dart';
import 'about_me_intro.dart';
import 'basic_services_grid.dart';
import 'detailed_services_section.dart';
import 'experience_info.dart';

class AboutMeSection extends StatelessWidget {
  const AboutMeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 80),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const AboutMeIntro(),
          const SizedBox(height: 8),
          Center(
            child: CustomDivider(
              color: AppColors.white,
              width: context.width / 4,
              height: 2,
            ),
          ),
          const SizedBox(height: 8),
          const ExperienceInfo(),
          const SizedBox(height: 58),
          const BasicServicesGrid(),
          const SizedBox(height: 80),
          const DetailedServicesSection(),
        ],
      ),
    );
  }
}
