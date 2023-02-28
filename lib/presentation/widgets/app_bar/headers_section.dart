import 'package:flutter/material.dart';
import '../../../core/utils/app_extensions.dart';
import 'horizontal_headers.dart';

import 'custom_menu_btn.dart';

class HeadersSection extends StatelessWidget {
  const HeadersSection({super.key});

  @override
  Widget build(BuildContext context) {
    if (context.width > 768) {
      return const HorizontalHeaders();
    } else {
      return const CustomMenuBtn();
    }
  }
}
