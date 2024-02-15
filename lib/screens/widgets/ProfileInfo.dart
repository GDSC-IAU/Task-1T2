// widgets/ProfileInfo.dart

import 'package:flutter/material.dart';
import '../widgets/email.dart';
import '../widgets/phoneNumber.dart';
import '../widgets/Website.dart';

class ProfileInfo extends StatelessWidget {
  final TextEditingController emailController;
  final TextEditingController phoneNumberController;
  final TextEditingController websiteController;

  const ProfileInfo({
    super.key,
    required this.emailController,
    required this.phoneNumberController,
    required this.websiteController,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        email(controller: emailController),
        PhoneNumber(controller: phoneNumberController),
        Website(controller: websiteController),
      ],
    );
  }
}
