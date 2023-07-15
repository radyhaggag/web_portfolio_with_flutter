import '../../data/models/custom_service.dart';
import '../../data/models/project.dart';
import 'app_assets.dart';

abstract class AppConstants {
  static const double appBarHeight = 80;
  static const List<CustomService> services = [
    CustomService(
      service: 'MOBILE DEVELOPMENT',
      logo: AppAssets.androidLogo,
      description:
          'I am a Junior mobile developer. I have experience using Dart and Flutter Framework.',
    ),
    CustomService(
      service: 'UI & UX DESIGNING',
      logo: AppAssets.uiDesignLogo,
      description:
          'I design beautiful web interfaces with Figma and Adobe XD. I design beautiful web interfaces with Figma and Adobe XD.',
    ),
    CustomService(
      service: 'WEB SCRAPING',
      logo: AppAssets.scrappingLogo,
      description:
          'I can collect content and data from the internet then manipulate and analyze as needed.',
    ),
  ];
  static const List<Project> projects = [
    Project(
      name: 'Live score',
      imageUrl:
          'https://drive.google.com/uc?id=1ITN6reINiIaM-6j3QqxrwtvADZgLNvwB',
      description:
          'A football application to display all related matches and rankings in all international and local tournaments',
      githubRepoLink: 'https://github.com/radyhaggag/live_score',
      previewLink: 'https://youtu.be/DT_9gLkeWKQ',
    ),
    Project(
      name: 'Instagram clone',
      imageUrl:
          'https://drive.google.com/uc?id=1qNFCNYdUo7o36ythQtjaSrv7L0NV_Vnv',
      description:
          'Social media application for share posts and stories with people, One-to-one chat, Share reels videos',
      githubRepoLink:
          'https://github.com/radyhaggag/Instagram-Clone-With-Clean-Architecture',
      previewLink: 'https://youtu.be/lzlRjIr4d3o',
    ),
    Project(
      name: 'TikTok Downloader',
      imageUrl:
          'https://drive.google.com/uc?id=1SypuIPVdokg0O4DYoYdswRowlIJAGgIq',
      description:
          'An application for download videos from tiktok and save it to gallery.',
      githubRepoLink: 'https://github.com/radyhaggag/tiktok_downloader',
      previewLink: 'https://youtu.be/DMSHT_2HPxI',
    ),
    Project(
      name: 'Bookly',
      imageUrl:
          'https://drive.google.com/uc?id=1yQtoq-wjVejWPXRI7gzGMXPUZrRob8kY',
      description: 'An application to explore books and view their details.',
      githubRepoLink:
          'https://github.com/radyhaggag/bookly_app_with_mvvm_and_bloc',
      previewLink: 'https://youtu.be/-JZzmRoKq2E',
    ),
    Project(
      name: 'Image processing',
      imageUrl:
          'https://drive.google.com/uc?id=1hd7U3HgoDqXEi9eDKYjrY9iqlWa6qt8E',
      description:
          'An Desktop program for process images and apply some filters to them.',
      githubRepoLink:
          'https://github.com/radyhaggag/image_processing_program_with_python_flet',
      previewLink: 'https://youtu.be/o070OGt68VA',
    ),
    Project(
      name: 'Salat al janazah',
      imageUrl:
          'https://drive.google.com/uc?id=1UpCGckOS46GdTuHU4wuj7Abo_97gxe_E',
      description:
          'An application for add janazah prayer and view the prayers for nearby people',
      googlePlay:
          'https://play.google.com/store/apps/details?id=com.SJY.salataljanaza',
    ),
    Project(
      name: 'Ghaslah',
      imageUrl:
          'https://drive.google.com/uc?id=1ed4H2-cH6yk_kVkDdxOLcUkgP1xpuo72',
      description:
          'An application for add wash cars reservation with location in map and the picker will come to wash the cars',
      previewLink: 'https://youtu.be/3kc5zXBVQeI',
    ),
    Project(
      name: 'Zawilan',
      imageUrl:
          'https://drive.google.com/uc?id=1ElTwguynMLqhS295-IE7bTTabsZGZp8s',
      description:
          'Zwailan is an education app based on units and sections system, you start by sign up on app and wait until the teacher accept your join request.',
      previewLink: 'https://youtu.be/sICSM4D-rPM',
      googlePlay:
          'https://play.google.com/store/apps/details?id=com.radyhaggag.zawilan',
    ),
  ];
}
