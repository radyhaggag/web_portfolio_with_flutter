import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/core/utils/app_extensions.dart';
import 'package:portfolio/core/utils/app_strings.dart';
import 'package:universal_html/html.dart' as html;

import '../../../core/utils/app_assets.dart';
import '../../../core/utils/app_colors.dart';
import '../../../core/utils/app_enums.dart';
import '../../blocs/home_bloc/home_bloc.dart';
import 'custom_header_btn.dart';

class HorizontalHeaders extends StatelessWidget {
  const HorizontalHeaders({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return Row(
          children: [
            ...List.generate(
              AppBarHeaders.values.length,
              (index) {
                return CustomHeaderBtn(headerIndex: index);
              },
            ),
            Visibility(
              visible:
                  (context.width > DeviceType.smallScreenLaptop.getMaxWidth()),
              replacement: Container(),
              child: InkWell(
                hoverColor: Colors.transparent,
                splashColor: Colors.transparent,
                enableFeedback: false,
                highlightColor: Colors.transparent,
                onTap: () {
                  html.window.open(AppStrings.developerResume, '_blank');
                },
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: AppColors.primaryColor),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(
                          width: 20,
                        ),
                        Text(
                          "Resume",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: AppColors.white),
                        ),
                        Image.asset(
                          AppAssets.resumeGif,
                          gaplessPlayback: true,
                          repeat: ImageRepeat.repeat,
                          scale: 0.5,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
