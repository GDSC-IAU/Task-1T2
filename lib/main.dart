import 'package:flutter/material.dart';
import 'package:profile_page/MyCard.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Profile",
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 175, 128, 245),
          title: const Row(
            children: [
              Icon(Icons.arrow_back),
              SizedBox(width: 8), // Adjust as needed
              Text("Edit profile"),
            ],
          ),
          centerTitle: true,
        ),
        body: MyCard(),
      ),
    );
  }
}
