import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/core/utils/app_extensions.dart';
import 'package:portfolio/core/utils/app_strings.dart';
import 'package:portfolio/presentation/widgets/app_bar/theme_header_btn.dart';
import 'package:universal_html/html.dart' as html;

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
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: ThemeHeader(),
            ),
            Visibility(
              visible:
                  (context.width > DeviceType.smallScreenLaptop.getMaxWidth()),
              replacement: Container(),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  hoverColor: Colors.transparent,
                  onTap: () {
                    html.window.open(AppStrings.developerResume, '_blank');
                  },
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
            )
          ],
        );
      },
    );
  }
}
