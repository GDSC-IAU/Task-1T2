import 'package:flutter/material.dart';

AppBar appBar(BuildContext context) {
  return AppBar(
    title: const Text(
      "Profile",
      style: TextStyle(
          color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
    ),
    centerTitle: true,
    leading: IconButton(
      onPressed: () {
        Navigator.pop(context);
      },
      icon: const Icon(Icons.arrow_back),
    ),
    actions: [
      IconButton(
        onPressed: () {
          // Navigating to the cart page using the named route
          Navigator.pushNamed(context, '/cart');
        },
        icon: Icon(Icons.settings_rounded),
      )
    ],
  );
}
