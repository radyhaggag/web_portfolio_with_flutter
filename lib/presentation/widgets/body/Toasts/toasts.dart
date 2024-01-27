import 'package:flutter/material.dart';
import 'package:toastification/toastification.dart';

import '../../../../core/utils/app_colors.dart';

class WelcomeToasts {
  WelcomeToasts(context) {
    showToast(
        time: 5,
        title: "Welcome to Saif's Portfolio!",
        description: "You can contact Saif if you need any assistance :)",
        context: context);
    showToast(
        time: 20,
        title: "Do you want to work together?",
        description:
            "Contact Saif via What's App, He will be more than happy to work with you! :)",
        context: context);
    showToast(
        time: 40,
        title: "Seems like your are still not sure",
        description:
            "Connect with Saif in Linkedin, maybe you can have a quick chat together",
        context: context);
    showToast(
        time: 60,
        title: "Still hesitating?",
        description: "Alright, I will keep quiet :| I hope that will help!",
        context: context);
  }

  static showToast({
    required int time,
    required String title,
    required String description,
    required context,
  }) {
    return Future.delayed(Duration(seconds: time))
        .then((value) => toastification.show(
              context: context,
              title: Text(title),
              description: Text(description),
              alignment: Alignment.topRight,
              primaryColor: AppColors.primaryColor,
              dragToClose: true,
              showProgressBar: true,
              icon: const Icon(Icons.info_outlined),
              autoCloseDuration: const Duration(seconds: 5),
            ));
  }
}
