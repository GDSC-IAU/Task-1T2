import 'package:flutter/material.dart';

Row followers() {
  return const Row(
    children: [
      Text(
        "followers",
        style: TextStyle(
            color: Color.fromARGB(255, 160, 158, 158),
            fontWeight: FontWeight.bold,
            fontSize: 14),
      ),
      Text(
        " 2349",
        style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
      ),
      SizedBox(
        height: 90,
        width: 20,
      ),
      Text("following",
          style: TextStyle(
              color: Color.fromARGB(255, 160, 158, 158),
              fontWeight: FontWeight.bold,
              fontSize: 14)),
      Text("152", style: TextStyle(color: Color.fromARGB(255, 0, 0, 0))),
    ],
  );
}
