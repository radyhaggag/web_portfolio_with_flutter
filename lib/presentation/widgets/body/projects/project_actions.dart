import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/widgets/custom_button.dart';

class ProjectActions extends StatelessWidget {
  const ProjectActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      fit: FlexFit.tight,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(
            child: CustomButton(
              label: 'view live',
              backgroundColor: AppColors.primaryColor,
              onPressed: () {},
            ),
          ),
          const SizedBox(width: 18),
          Expanded(
            child: CustomButton(
              label: 'Github',
              borderColor: AppColors.primaryColor,
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
