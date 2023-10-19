import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/core/utils/app_colors.dart';
import 'package:universal_html/html.dart' as html;

class ContactMePersonally extends StatelessWidget {
  const ContactMePersonally({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            html.window.open("https://wa.me/+601133505090", '_blank');
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
                  width: 5,
                ),
                const Text("Call / Message Me")
              ],
            ),
          ),
        ),
        const SizedBox(height: 10),
        InkWell(
          onTap: () {
            html.window.open("mailto:syfalmjd11@gmail.com", '_blank');
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
                  width: 5,
                ),
                const Text("Email Me")
              ],
            ),
          ),
        ),
      ],
    );
  }
}
