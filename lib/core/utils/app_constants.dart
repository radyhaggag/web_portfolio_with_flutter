import '../../data/models/custom_service.dart';
import '../../data/models/project.dart';
import 'app_assets.dart';

abstract class AppConstants {
  static const double appBarHeight = 80;
  static const List<CustomService> services = [
    CustomService(
      service: 'UI, UX & RESPONSIVENESS DESIGNING ',
      logo: AppAssets.uiDesignLogo,
      description:
          'Working on enhancing the user interface and experience with focus on aesthetics and functionality. My repressiveness designing and  and skills  ensure that your application looks great and offers a seamless and user-friendly experience.',
    ),
    CustomService(
        service: 'MOBILE DEVELOPMENT',
        logo: AppAssets.androidLogo,
        description:
            'Crafting mobile applications that meet any unique requirements. My skills will bring your ideas to a feature-rich, intuitive, and platform-specific mobile App. From Android to iOS, I have got you covered.'),
    CustomService(
        service: 'CYBER SECURITY',
        logo: AppAssets.scrappingLogo,
        description:
            'Protecting your digital assets and sensitive information from cyber threats. My Cybersecurity skills include vulnerability assessments, threat monitoring, and proactive measures to ensure the security of your online presence.'),
  ];
  static const List<Project> projects = [
    Project(
        name: "Dart_Secure Package",
        imageUrl:
            "https://github.com/Syf-Almjd/dart_secure/blob/master/assets/dartSecure.png",
        description:
            "An official package published in Pub.dev, for the cyber security of mobile applications, Programmed with Dart.",
        previewLink: "https://pub.dev/packages/dart_secure",
        githubRepoLink: "https://github.com/Syf-Almjd/dart_secure"),
    Project(
        name: "Human Resources Management System",
        imageUrl:
            "https://github.com/Syf-Almjd/TaskForce_HRMS/blob/master/assets/logoTransparent.png",
        description:
            "Worked with Flutter, Dart, and Firebase in a Flutter team in building a secure HR System.",
        githubRepoLink: "https://github.com/Syf-Almjd/TaskForce_HRMS"),
    Project(
        name: "Albukhary Computing Community",
        imageUrl:
            "https://play-lh.googleusercontent.com/m1My7F7HSe8B56MVXNqcO53bLXYDpIC-bC1FVsajJ6dhCa4VuXLd0BBy6_l90iinYe4I",
        description:
            "App for fostering collaboration, knowledge sharing, and networking among IT enthusiasts.",
        githubRepoLink:
            "https://github.com/Syf-Almjd/ACC_Albukhary-Computing-Community",
        googlePlay:
            "https://play.google.com/store/apps/details?id=com.mjd.sci_acc"),
    Project(
        name: "Angel Tour Guide",
        imageUrl:
            "https://play-lh.googleusercontent.com/LKm_zMpAl4swlmehcJ3FltuBz5pOsFriTbJ9hzuZh1EG2KEmQOcJepPdvreC2F0fVw=w240-h480-rw",
        description:
            "Enhancing the travel experience with personalized recommendations for different abilities people.",
        googlePlay:
            "https://play.google.com/store/apps/details?id=com.mjd.angel",
        githubRepoLink: "https://github.com/Syf-Almjd/Angel_Tour_Guide"),
    Project(
        name: "HealthyU+ App",
        imageUrl:
            "https://github.com/Syf-Almjd/HealthyUplus/blob/master/assets/logo.jpg",
        description:
            "An App that uses API to provide food and BMI suggestions to help track diets for people.",
        githubRepoLink: "https://github.com/Syf-Almjd/HealthyUplus"),
    Project(
        name: "MealMaster Chef App",
        imageUrl:
            "https://raw.githubusercontent.com/Syf-Almjd/MealMaster/master/assets/logoTra.png",
        description:
            "Provided receipts and guidance to people who want to cook and share among their friends.",
        googlePlay:
            "https://play.google.com/store/apps/details?id=com.mjd.mealmaster",
        githubRepoLink: "https://github.com/Syf-Almjd/MealMaster"),
    Project(
        name: "AIU E-learning Web App",
        imageUrl:
            "https://play-lh.googleusercontent.com/slSd-mpVU3l_3Sfq1XG2H7aDkWegGH1llSdz8b9RKNqLDEYXvQkmgw8VzH-jaQy0P8A=w240-h480-rw",
        googlePlay:
            "https://play.google.com/store/apps/details?id=com.mjd.eLearning.aiu_elearning",
        githubRepoLink: "https://github.com/Syf-Almjd/AIU_elearning",
        description:
            "A mobile application that displays university Moodle with multiple web performance enhancements."),
    Project(
        name: "Mobile Forsan App",
        imageUrl:
            "https://play-lh.googleusercontent.com/XjibLOSwBciMUH493t20Iw1KDylhzRfYGztxcH7uYwdalsQWsc0Dg2I3K6UtwCCPzQ=w240-h480-rw",
        githubRepoLink: "https://github.com/Syf-Almjd/Forsan",
        previewLink:
            "https://www.instagram.com/reel/CyCjxEjPGQh/?utm_source=ig_web_button_share_sheet&igshid=MzRlODBiNWFlZA==",
        googlePlay:
            "https://play.google.com/store/apps/details?id=com.mjd.forsan.forsan",
        description:
            "A mobile app made in Arabic that is full of functionalities to assist students in printing inquiries."),
    Project(
        name: "AIU Social Business Website",
        imageUrl:
            "https://play-lh.googleusercontent.com/BcvQhTnhBJe3m-MrJ-NdlOzab7ScZ6Mq16a2ZlkNHfr9MMJxWMt8_Op_p7xSwkvTQi4=w526-h296-rw",
        previewLink: "https://aiusocialbusiness.aiu.edu.my/",
        googlePlay: "https://aiusocialbusiness.aiu.edu.my/",
        description:
            "Developed to help technologize AIU Social Business as well as E-Commerce for SB Shops."),
    Project(
        name: "VACR Services",
        imageUrl:
            "https://github.com/Syf-Almjd/VACR/blob/master/app/src/main/main_logo-playstore.png",
        previewLink:
            "https://www.youtube.com/watch?v=v-WBd-0_98c&feature=youtu.be",
        googlePlay:
            "https://play.google.com/store/apps/details?id=com.mjd.vacrservices",
        githubRepoLink: "https://github.com/Syf-Almjd/VACR",
        description:
            "An App developed during COVID-19 to help people request and find services they need at home.")
  ];
}
