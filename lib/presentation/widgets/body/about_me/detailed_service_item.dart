import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_enums.dart';
import '../../../../core/utils/app_extensions.dart';
import '../../../../core/utils/app_styles.dart';
import '../../../../data/models/custom_service.dart';

class DetailedServiceItem extends StatefulWidget {
  const DetailedServiceItem({super.key, required this.service});

  final CustomService service;

  @override
  State<DetailedServiceItem> createState() => _DetailedServiceItemState();
}

class _DetailedServiceItemState extends State<DetailedServiceItem> {
  Color itemColor = AppColors.white;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 10,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: itemColor,
          width: 3,
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      child: MouseRegion(
        onEnter: _onEnter,
        onExit: _onExit,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              widget.service.logo,
              height: context.width < DeviceType.mobile.getMinWidth() ? 40 : 56,
            ),
            const SizedBox(height: 16),
            FittedBox(
              child: Text(
                widget.service.service,
                style: AppStyles.s24.copyWith(color: itemColor),
                textAlign: TextAlign.center,
              ),
            ),
            if (context.width > DeviceType.mobile.getMinWidth()) ...[
              const SizedBox(height: 16),
              Flexible(
                child: AutoSizeText(
                  widget.service.description,
                  style: AppStyles.s17,
                  minFontSize: 8,
                  textAlign: TextAlign.center,
                ),
              ),
            ]
          ],
        ),
      ),
    );
  }

  void _onExit(event) {
    setState(() => itemColor = AppColors.white);
  }

  void _onEnter(event) {
    setState(() => itemColor = AppColors.primaryColor);
  }
}
