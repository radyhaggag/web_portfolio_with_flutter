import '../../data/models/project.dart';
import 'app_assets.dart';

import '../../data/models/custom_service.dart';

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
          'https://drive.google.com/uc?id=1FpRZzlIWTRbFp62kE7cBhgsuUiAj8fMw',
      description:
          'A football application to display all related matches and rankings in all international and local tournaments',
    ),
    Project(
      name: 'Instagram clone',
      imageUrl:
          'https://drive.google.com/uc?id=1qNFCNYdUo7o36ythQtjaSrv7L0NV_Vnv',
      description:
          'Social media application for share posts and stories with people, One-to-one chat, Share reels videos',
    ),
    Project(
      name: 'TikTok Downloader',
      imageUrl:
          'https://drive.google.com/uc?id=1v8cdp6KiOJPnRYmcFRHxxE_4eANXph_y',
      description:
          'An application for download videos from tiktok and save it to gallery.',
    ),
    Project(
      name: 'Bookly',
      imageUrl:
          'https://drive.google.com/uc?id=1ZvR88ixwlu8M_xxSt6bQA7reY74b_r5L',
      description: 'An application to explore books and view their details.',
    ),
    Project(
      name: 'Image processing',
      imageUrl:
          'https://drive.google.com/uc?id=1eMIZKFCSJyp3aTV9XMJZzpfCxQy2W2Rf',
      description:
          'An Desktop program for process images and apply some filters to them.',
    ),
  ];
}
