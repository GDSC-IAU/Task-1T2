import 'package:flutter/material.dart';
import 'widgets/ProfileBox.dart';

class profilePage extends StatelessWidget {
  const profilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFD0BFFF),
      ),
      body: const Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: [
            profileBox(),
        
        
        
            
          ],
        ),
      ),

    );
  }
}

