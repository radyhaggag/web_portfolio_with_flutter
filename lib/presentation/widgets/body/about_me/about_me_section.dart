import 'package:flutter/material.dart';

import '../../../../core/utils/app_extensions.dart';
import 'about_me_msg.dart';
import 'basic_services_grid.dart';
import 'experience_info.dart';

class AboutMeSection extends StatelessWidget {
  const AboutMeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: context.width * .12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          AboutMeMsg(),
          SizedBox(height: 8),
          ExperienceInfo(),
          SizedBox(height: 58),
          BasicServicesGrid(),
        ],
      ),
    );
  }
}
