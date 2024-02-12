import 'package:flutter/material.dart';
import 'package:profile_page/screens/profilePage.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const profilePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
