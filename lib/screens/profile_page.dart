import 'package:flutter/material.dart';
import './widgets/Profile_Image.dart';

class profile_page extends StatelessWidget {
  const profile_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFD0BFFF),
      ),
      body:  profile_image(),

    );
  }
}

