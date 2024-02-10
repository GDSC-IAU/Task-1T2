import 'package:flutter/material.dart';

class profile_image extends StatelessWidget {
  const profile_image({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:const Center(
        child: SizedBox(
          width: 200,
          height: 200,
          child: CircleAvatar(
            radius: 100,
            backgroundImage: AssetImage('assets/images/account.png'),
            ),
        ),
      ),

    );
  }
}
