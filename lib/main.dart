import 'package:flutter/material.dart';
import 'package:profile_page/screens/MyCard.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "flutter video",
      home: Scaffold( 
        body: my_card()),
    );
  }
}
