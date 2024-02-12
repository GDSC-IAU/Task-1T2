import 'package:flutter/material.dart';
import '../widgets/email.dart';
import '../widgets/phoneNumber.dart';

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        email(),
        phoneNumber(),

      ],
    );
  }
}
