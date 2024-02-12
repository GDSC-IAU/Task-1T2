import 'package:flutter/material.dart';
import 'widgets/ProfileBox.dart';
import 'widgets/ProfileInfo.dart';

class profilePage extends StatelessWidget {
  const profilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFD0BFFF),
      ),
      body:const SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
            children: [
              profileBox(),
              ProfileInfo(),
              
            ],
          ),
      ),
      
    );
  }
}
