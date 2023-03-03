import 'package:flutter/widgets.dart';
import 'package:portfolio/presentation/widgets/body/contact/contact_intro.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 80),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          ContactIntro(),
        ],
      ),
    );
  }
}
