import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/presentation/widgets/app_bar/theme_header_btn.dart';
import 'package:universal_html/html.dart' as html;

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
            InkWell(
              hoverColor: Colors.transparent,
              onTap: () {
                html.window.open(
                    "https://drive.google.com/drive/folders/1inc2Wy0ajAR7p9ZrlsJKnbi4dDCZF-fR?usp=share_link",
                    '_blank');
              },
              child: const Padding(
                padding: EdgeInsets.all(12.0),
                child: Text("Resume"),
              ),
            ),
          ],
        );
      },
    );
  }
}
