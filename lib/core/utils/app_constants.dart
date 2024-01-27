import '../../data/models/custom_service.dart';
import '../../data/models/project.dart';
import 'app_assets.dart';

abstract class AppConstants {
  static const double appBarHeight = 80;
  static const String appTitle = "SaifAlmajd Portfolio";
  static const List<CustomService> services = [
    CustomService(
      service: 'UI, UX & RESPONSIVENESS',
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
        name: "Human Resources Management System",
        previewLink: "https://taskforce-hrms.web.app/",
        imageUrl:
            "https://play-lh.googleusercontent.com/ZBiCO7NM0gSzodLvd6XLXUHQ8fyPDCRjnK05b6Ftkuc6VEUwsw9xeXr7l7KHiwAvOg=w3840-h2160-rw",
        description:
            "Worked with Flutter, Dart, and Firebase in a Flutter team in building a secure HR System.",
        githubRepoLink: "https://github.com/Syf-Almjd/TaskForce_HRMS"),
    Project(
        name: "Mobile Security Library",
        imageUrl:
            "https://media.istockphoto.com/id/1139472848/vector/shield-tech-vector-icon-illustration.jpg?s=612x612&w=0&k=20&c=IQ62hrVUpzbePaaZ9flEvZkYO6WvyC3ZbnRM31YHJIM=",
        description:
            "An official package published in Pub.dev, for the cyber security of mobile applications, Programmed with Dart.",
        previewLink: "https://pub.dev/packages/dart_secure",
        githubRepoLink: "https://github.com/Syf-Almjd/dart_secure"),
    Project(
        name: "Sapura Tasking System",
        imageUrl:
            "https://play-lh.googleusercontent.com/YPgI0euLMKAAhi58yzpfqLXzPcHK_FJMU2d2SXqe6GOkBx4TaftK_iZNvt7_3F-EKKc=w240-h480-rw",
        googlePlay:
            "https://play.google.com/store/apps/details?id=com.mjd.sapura_tm.sapura_tm",
        githubRepoLink: "https://github.com/Syf-Almjd/Sapura_TM",
        description:
            "The Supura Task Management App is a simple and efficient solution for organizing and managing tasks within your company."),
    Project(
        name: "FlutterFlow Components",
        imageUrl:
            "https://raw.githubusercontent.com/Syf-Almjd/flutterflow_components/master/assets/logo.png",
        description:
            "A complete, open source, rapid development package for creating apps using Flutter/Dart.",
        githubRepoLink: "https://github.com/Syf-Almjd/flutterflow_components",
        previewLink: "https://pub.dev/packages/flutterflow_components"),
    Project(
        name: "Flutter Clean Coded",
        imageUrl:
            "https://storage.googleapis.com/cms-storage-bucket/70760bf1e88b184bb1bc.png",
        githubRepoLink: "https://github.com/Syf-Almjd/Fluttre_Clean_Coded",
        description:
            "A clean architecture project to help optimize and organize flutter mobile applications."),
    Project(
        name: "Forsan Business Management System",
        imageUrl:
            "https://play-lh.googleusercontent.com/AqggaRoSkh1J5YMsRwEzDSZa-IeNkIPSfKPgBx_307twMJa_4bEJbItHx2AiHLLrBBZ6",
        githubRepoLink: "https://github.com/Syf-Almjd/Forsan_Admin",
        googlePlay:
            "https://play.google.com/store/apps/details?id=com.mjd.forsan_admin",
        description:
            "A management app that can accept manage modify and delete orders coming from forsan Application."),
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
        name: "FoodFinder: Explore & Cook!",
        imageUrl:
            "https://play-lh.googleusercontent.com/gLz02GkvIgswJQ-cWlJxZZ6f39NAziLLPzuKf_NyX6QqcmX6iCAwKucFTjQ4hdQy_y8=w240-h480-rw",
        description:
            "An App that uses API to allow users to explore food and suggestions to help them choose the food they like.",
        googlePlay:
            "https://play.google.com/store/apps/details?id=com.mjd.foodfinder",
        githubRepoLink: "https://github.com/Syf-Almjd/FoodFinder"),
    Project(
        name: "Forsan E-Commerce Mobile App",
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
        name: "VACR Services",
        imageUrl:
            "https://play-lh.googleusercontent.com/jl6WOvCGNw07iLEG2I44EY6KyHBCxrenZ963e_T8K_MBmTFM1Ps_dFmWBNRnCPr3YAs=w3840-h2160-rw",
        previewLink:
            "https://www.youtube.com/watch?v=v-WBd-0_98c&feature=youtu.be",
        googlePlay:
            "https://play.google.com/store/apps/details?id=com.mjd.vacrservices",
        githubRepoLink: "https://github.com/Syf-Almjd/VACR",
        description:
            "An App developed during COVID-19 to help people request and find services they need at home."),
    Project(
        name: "Angel Tour Guide, Malaysia!",
        imageUrl:
            "https://play-lh.googleusercontent.com/LKm_zMpAl4swlmehcJ3FltuBz5pOsFriTbJ9hzuZh1EG2KEmQOcJepPdvreC2F0fVw=w240-h480-rw",
        description:
            "Enhancing the travel experience with personalized recommendations for different abilities people.",
        googlePlay:
            "https://play.google.com/store/apps/details?id=com.mjd.angel",
        githubRepoLink: "https://github.com/Syf-Almjd/Angel_Tour_Guide"),
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
        name: "MealMaster Mobile App",
        imageUrl:
            "https://raw.githubusercontent.com/Syf-Almjd/MealMaster/master/assets/logoTra.png",
        description:
            "Provided receipts and guidance to people who want to cook and share among their friends.",
        googlePlay:
            "https://play.google.com/store/apps/details?id=com.mjd.mealmaster",
        githubRepoLink: "https://github.com/Syf-Almjd/MealMaster"),
    Project(
        name: "DSA Windows Text Editor",
        imageUrl:
            "https://www.designbombs.com/wp-content/uploads/2020/02/best-text-editors.png",
        githubRepoLink: "https://github.com/Syf-Almjd/DSATextEditor",
        description:
            "A unique Text Editor that with a GUI preform operations on as a tmade with JAVA."),
    Project(
        name: "Alph MYSL: AI Sign Language",
        imageUrl:
            "https://raw.githubusercontent.com/Syf-Almjd/Alpha_MySL/master/assets/images/app_logo.png?token=GHSAT0AAAAAACERGB7RXVZFH5F4AL7RFN22ZNVHQQA",
        googlePlay:
            "https://play.google.com/store/apps/details?id=com.mjd.alpha_mysl",
        description:
            "An Artificial intelligence Malaysian Sign language App that converts camera input into letters with their pronunciation"),
    Project(
        name: "BMI Calculator+ Mobile App",
        imageUrl:
            "https://play-lh.googleusercontent.com/E32XCpDcTqjhjU3qkMECXLGSikt3m4Lz2h8D84LBfM3uV4l4Sc8K2nY8JBHqUhv-Hu4=w240-h480-rw",
        googlePlay:
            "https://play.google.com/store/apps/details?id=com.mjd.bmihealthy.bmihealthy",
        githubRepoLink: "https://github.com/Syf-Almjd/BMIHealthy",
        description:
            "An App to help calculate the BMI and provides suggestion based on BMI and keeps track of it."),
    Project(
        name: "AIU Social Business Website",
        imageUrl:
            "https://play-lh.googleusercontent.com/BcvQhTnhBJe3m-MrJ-NdlOzab7ScZ6Mq16a2ZlkNHfr9MMJxWMt8_Op_p7xSwkvTQi4=w526-h296-rw",
        previewLink: "https://aiusocialbusiness.aiu.edu.my/",
        googlePlay: "https://aiusocialbusiness.aiu.edu.my/",
        description:
            "Developed to help technologize AIU Social Business as well as E-Commerce for SB Shops using WORDPRESS."),
  ];
}
