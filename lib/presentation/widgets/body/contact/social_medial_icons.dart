import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:universal_html/html.dart' as html;

import '../../../../core/utils/social_links.dart';

class SocialMediaIcons extends StatelessWidget {
  const SocialMediaIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return const Wrap(
      children: [
        SocialMediaIconBtn(
          icon: FontAwesomeIcons.dev,
          link: SocialLinks.devTo,
        ),
        SocialMediaIconBtn(
          icon: FontAwesomeIcons.github,
          link: SocialLinks.github,
        ),
        SocialMediaIconBtn(
          icon: FontAwesomeIcons.stackOverflow,
          link: SocialLinks.stackOverflow,
        ),
        SocialMediaIconBtn(
          icon: FontAwesomeIcons.dribbble,
          link: SocialLinks.dribbble,
        ),
        SocialMediaIconBtn(
          icon: FontAwesomeIcons.hashnode,
          link: SocialLinks.hashnode,
        ),
        SocialMediaIconBtn(
          icon: FontAwesomeIcons.userGear,
          link: SocialLinks.geeksForGeeks,
        ),
        SocialMediaIconBtn(
          icon: FontAwesomeIcons.instagram,
          link: SocialLinks.instagram,
        ),
        SocialMediaIconBtn(
          icon: FontAwesomeIcons.linkedinIn,
          link: SocialLinks.linkedin,
        ),
        SocialMediaIconBtn(
          icon: FontAwesomeIcons.twitter,
          link: SocialLinks.twitter,
        ),
      ],
    );
  }
}

class SocialMediaIconBtn extends StatelessWidget {
  const SocialMediaIconBtn({super.key, required this.icon, this.link});
  final IconData icon;
  final String? link;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: IconButton.styleFrom(
        shape: const CircleBorder(),
        padding: const EdgeInsets.all(15),
      ),
      onPressed: () {
        html.window.open(link!, '_blank');
      },
      child: Icon(
        icon,
        size: 32,
      ),
    );
  }
}
