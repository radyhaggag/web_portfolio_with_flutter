import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/core/utils/app_colors.dart';
import 'package:portfolio/core/utils/app_strings.dart';
import 'package:portfolio/presentation/widgets/app_bar/theme_header_btn.dart';
import 'package:universal_html/html.dart' as html;

import '../../../core/utils/app_enums.dart';
import '../../../core/utils/app_extensions.dart';
import '../../blocs/home_bloc/home_bloc.dart';
import 'custom_header_btn.dart';

class VerticalHeaders extends StatelessWidget {
  const VerticalHeaders({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        if (context.width > DeviceType.ipad.getMaxWidth()) {
          return const SizedBox();
        }
        return SizedBox(
          width: context.width,
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            ...List.generate(
              AppBarHeaders.values.length,
              (index) => SizedBox(
                width: context.width,
                child: CustomHeaderBtn(headerIndex: index),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: ThemeHeader(),
            ),
            InkWell(
              hoverColor: Colors.transparent,
              onTap: () {
                html.window.open(AppStrings.developerResume, '_blank');
              },
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: AppColors.primaryColor),
                  child: const Padding(
                    padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
                    child: Text(
                      "Resume",
                    ),
                  ),
                ),
              ),
            ),
          ]),
        );
      },
    );
  }
}
