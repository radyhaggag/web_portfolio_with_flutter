import 'package:auto_size_text/auto_size_text.dart';
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
      child: OutlinedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          side: borderColor == null ? null : BorderSide(color: borderColor!),
          backgroundColor: backgroundColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: AutoSizeText(
                label,
                style: AppStyles.s16,
                textAlign: TextAlign.center,
                minFontSize: 8,
                maxLines: 1,
              ),
            ),
            if (icon != null) ...[
              const SizedBox(width: 5),
              Icon(
                icon,
                size: 18,
                color: AppColors.white,
              ),
            ]
          ],
        ),
      ),
    );
  }
}
