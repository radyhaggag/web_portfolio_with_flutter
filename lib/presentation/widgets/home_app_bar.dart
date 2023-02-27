import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/app_colors.dart';

class HomeAppBar extends StatelessWidget with PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.appBarColor,
      child: Row(
        children: const [],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(80);
}
