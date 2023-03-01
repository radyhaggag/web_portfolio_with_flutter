import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
import '../utils/app_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.height,
    required this.label,
    this.icon,
    this.backgroundColor,
    this.borderColor,
    this.onPressed,
    this.width,
  });

  final Function()? onPressed;
  final Color? backgroundColor;
  final Color? borderColor;
  final double? height;
  final IconData? icon;
  final String label;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 48,
      width: width,
      child: OutlinedButton.icon(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          side: borderColor == null ? null : BorderSide(color: borderColor!),
          backgroundColor: backgroundColor,
        ),
        label: Text(
          label,
          style: AppStyles.s16,
        ),
        icon: Icon(
          icon,
          size: 18,
          color: AppColors.white,
        ),
      ),
    );
  }
}
