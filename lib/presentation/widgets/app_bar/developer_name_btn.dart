import 'package:flutter/material.dart';
import 'package:universal_html/html.dart' as html;

import '../../../core/utils/app_assets.dart';
import '../../../core/utils/app_enums.dart';
import '../../../core/utils/app_extensions.dart';
import '../../../core/utils/app_strings.dart';
import '../../../core/utils/app_styles.dart';

class DeveloperNameBtn extends StatelessWidget {
  const DeveloperNameBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      onTap: () {
        html.window.location.reload();
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 13),
        child: SizedBox(
          width: context.width < DeviceType.ipad.getMaxWidth()
              ? context.width * .4
              : context.width * .15,
          child: Row(
            children: [
              FittedBox(
                alignment: Alignment.topLeft,
                child: Column(
                  children: [
                    Text(
                      AppStrings.developerNameStyle,
                      textScaler: const TextScaler.linear(1.2),
                      style: AppStyles.italic,
                    ),
                    Text(
                      AppStrings.developerFlutterGeek,
                      textScaler: const TextScaler.linear(0.8),
                      style: AppStyles.italic,
                    ),
                  ],
                ),
              ),
              Expanded(
                  child: Image.asset(
                AppAssets.firebaseFlutterLogo,
                scale: 5,
                gaplessPlayback: true,
                repeat: ImageRepeat.repeat,
              ))
            ],
          ),
        ),
      ),
    );
  }
}
