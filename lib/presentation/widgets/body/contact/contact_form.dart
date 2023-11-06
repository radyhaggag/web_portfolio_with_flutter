import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/app_colors.dart';
import 'package:portfolio/core/utils/app_strings.dart';
import 'package:universal_html/html.dart' as html;

import '../../../../core/utils/app_enums.dart';
import '../../../../core/utils/app_extensions.dart';
import '../../../../core/utils/app_styles.dart';
import '../../../../core/widgets/custom_button.dart';

class ContactForm extends StatefulWidget {
  const ContactForm({super.key});

  @override
  State<ContactForm> createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  late GlobalKey<FormState> _formKey;
  late TextEditingController _emailController;
  late TextEditingController _messageController;
  late TextEditingController _nameController;
  late TextEditingController _subjectController;

  @override
  void initState() {
    super.initState();
    _formKey = GlobalKey();
    _emailController = TextEditingController();
    _messageController = TextEditingController();
    _nameController = TextEditingController();
    _subjectController = TextEditingController();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _messageController.dispose();
    _nameController.dispose();
    _subjectController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: _getFormWidth(context.width),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              controller: _nameController,
              style: AppStyles.s14, // Text style
              decoration: InputDecoration(
                labelText: 'Name',
                labelStyle: TextStyle(
                  color: AppColors.lowPriority, // Label text color
                ),
                focusedBorder: OutlineInputBorder(
                  // Border color when the field is focused
                  borderSide: BorderSide(
                    color:
                        AppColors.lowPriority, // Change to your desired color
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  // Border color when the field is not focused
                  borderSide: BorderSide(
                    color:
                        AppColors.primaryLight, // Change to your desired color
                  ),
                ),
              ),
            ),
            const SizedBox(height: 12),
            TextFormField(
              controller: _emailController,
              style: AppStyles.s14,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  // Border color when the field is focused
                  borderSide: BorderSide(
                    color:
                        AppColors.lowPriority, // Change to your desired color
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  // Border color when the field is not focused
                  borderSide: BorderSide(
                    color:
                        AppColors.primaryLight, // Change to your desired color
                  ),
                ),
                labelText: 'E-mail',
                labelStyle: TextStyle(
                  color: AppColors.lowPriority, // Label text color
                ),
              ),
            ),
            const SizedBox(height: 12),
            TextFormField(
              controller: _subjectController,
              style: AppStyles.s14, // Text style
              decoration: InputDecoration(
                labelText: 'Subject',
                labelStyle: TextStyle(
                  color: AppColors.lowPriority, // Label text color
                ),
                focusedBorder: OutlineInputBorder(
                  // Border color when the field is focused
                  borderSide: BorderSide(
                    color:
                        AppColors.lowPriority, // Change to your desired color
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  // Border color when the field is not focused
                  borderSide: BorderSide(
                    color:
                        AppColors.primaryLight, // Change to your desired color
                  ),
                ),
              ),
            ),
            const SizedBox(height: 12),
            TextField(
              controller: _messageController,
              maxLines: 5,
              style: AppStyles.s14, // Text style
              decoration: InputDecoration(
                labelText: 'Type a message here...',
                labelStyle: TextStyle(
                  color: AppColors.lowPriority, // Label text color
                ),
                focusedBorder: OutlineInputBorder(
                  // Border color when the field is focused
                  borderSide: BorderSide(
                    color:
                        AppColors.lowPriority, // Change to your desired color
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  // Border color when the field is not focused
                  borderSide: BorderSide(
                    color:
                        AppColors.primaryLight, // Change to your desired color
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
            CustomButton(
              label: 'Submit',
              onPressed: () async {
                sendEmail();
              },
              borderColor: AppColors.lowPriority,
              width: _getFormWidth(context.width),
            ),
          ],
        ),
      ),
    );
  }

  sendEmail() async {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text("Redirecting to Gmail!"),
      ),
    );
    html.window.open(
        "${AppStrings.developerEmail}?subject=$_subjectController&body=My Name is $_nameController with $_emailController and I would like to send you a message: $_messageController",
        '_blank');
  }

  double _getFormWidth(double deviceWidth) {
    if (deviceWidth < DeviceType.mobile.getMaxWidth()) {
      return deviceWidth;
    } else if (deviceWidth < DeviceType.ipad.getMaxWidth()) {
      return deviceWidth / 1.6;
    } else if (deviceWidth < DeviceType.smallScreenLaptop.getMaxWidth()) {
      return deviceWidth / 2;
    } else {
      return deviceWidth / 2.5;
    }
  }
}
