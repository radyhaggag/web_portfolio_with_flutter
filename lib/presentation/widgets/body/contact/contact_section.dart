import 'package:flutter/material.dart';

import 'contact_intro.dart';
import 'contact_form.dart';

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
          SizedBox(height: 32),
          ContactForm(),
        ],
      ),
    );
  }
}
