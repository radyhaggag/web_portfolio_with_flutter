import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/core/utils/app_colors.dart';
import 'package:portfolio/core/utils/app_strings.dart';
import 'package:universal_html/html.dart' as html;

class ContactMePersonally extends StatelessWidget {
  const ContactMePersonally({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            html.window.open(AppStrings.developerWhatsapp, '_blank');
          },
          child: Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: AppColors.greenColor,
                )),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  FontAwesomeIcons.whatsapp,
                  color: AppColors.greenColor,
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text("Call/Message Me")
              ],
            ),
          ),
        ),
        const SizedBox(height: 10),
        InkWell(
          onTap: () {
            html.window.open(AppStrings.developerEmail, '_blank');
          },
          child: Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: AppColors.redColor,
                )),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  FontAwesomeIcons.google,
                  color: AppColors.redColor,
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text("Email Me")
              ],
            ),
          ),
        ),
        const SizedBox(height: 10),
        InkWell(
          onTap: () {
            html.window.open(AppStrings.developerTelegram, '_blank');
          },
          child: Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: AppColors.blueColor,
                )),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  FontAwesomeIcons.telegram,
                  color: AppColors.blueColor,
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text("Telegram Me")
              ],
            ),
          ),
        ),
      ],
    );
  }
}
