import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ProjectImage extends StatelessWidget {
  const ProjectImage({super.key, required this.imageUrl});
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 2,
      fit: FlexFit.tight,
      child: CachedNetworkImage(
        imageUrl: imageUrl,
        width: double.infinity,
        fit: BoxFit.cover,
        errorWidget: (context, url, error) {
          return const Icon(
            Icons.error_outline_rounded,
            size: 50,
          );
        },
      ),
    );
  }
}
