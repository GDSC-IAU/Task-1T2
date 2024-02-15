import 'package:flutter/material.dart';

class ProfileBox extends StatelessWidget {
  const ProfileBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [

        // The purple background
        Container(
          height: 100,
          decoration: const BoxDecoration(
            color: Color(0xFFD0BFFF),
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(50.0),
            ),
          ),
        ),

        // The white box
        Center(
          child: Container(
            height: 180,
            width: 350,
            margin: const EdgeInsets.only(top: 70),
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.all(Radius.circular(25)),
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(41, 0, 0, 0),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3),
                ),
              ],
            ),
          ),
        ),

        // The profile info
        Container(
          margin: const EdgeInsets.only(top: 150),
          alignment: Alignment.center,
          child: const Text(
            'Arwa Alkhathlan',
            style: TextStyle(
              fontSize: 30,
              color: Color(0xFFBEADFA),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 200),
          alignment: Alignment.center,
          child: const Text(
            'Front-End Developer',
            style: TextStyle(
              fontSize: 20,
              color: Color(0xFFBEADFA),
            ),
          ),
        ),
        Container(
          alignment: Alignment.center,
          child: const CircleAvatar(
            radius: 70,
            backgroundImage: AssetImage('assets/images/account.png'),
            foregroundColor: Color(0xFFBEADFA),
          ),
        ),
      ],
    );
  }
}
