import 'package:flutter/material.dart';
import 'screens/profile_page.dart';
import 'package:profile_page/widget/my_profile.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      title: "profile app",
      debugShowCheckedModeBanner: false,
      home: Scaffold(backgroundColor:Color.fromARGB(255, 240, 235, 236) ,
        body: tryprofile()
      ),
    );
  }
}
