import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/app_colors.dart';

class ProjectImage extends StatelessWidget {
  const ProjectImage({super.key, required this.imageUrl});
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 2,
      child: ClipRRect(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        borderRadius: BorderRadius.circular(20),
        child: Container(
          color: Colors.white,
          child: CachedNetworkImage(
            imageUrl: imageUrl,
            fadeInDuration: const Duration(seconds: 1),
            width: double.infinity,
            fit: BoxFit.fitHeight,
            errorWidget: (context, url, error) {
              return Padding(
                padding: const EdgeInsets.all(20.0),
                child: Icon(
                  color: AppColors.primaryColor,
                  Icons.gamepad_rounded,
                  size: 120,
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
