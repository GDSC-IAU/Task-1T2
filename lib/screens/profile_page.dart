import 'package:flutter/material.dart';
import './widgets/Profile_Image.dart';

class profile_page extends StatelessWidget {
  const profile_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile Page'),
      ),
      body: const Scaffold(
        body: Center(
          child: profile_image(),
        ),
      ),
    );
  }
}
