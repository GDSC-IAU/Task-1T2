import 'package:flutter/material.dart';

class website extends StatelessWidget {
  const website({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 20),
          child: const Text(
            'Website:',
            style: TextStyle(fontSize: 20, color: Color(0xFFBEADFA)),
          ),
        ),
        Stack(
          children: [
            Center(
              child: Container(
                height: 60,
                width: 350,
                margin: const EdgeInsets.only(top: 15),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(41, 0, 0, 0),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      const Text(
                        'https://arwaalkhathlan.com',
                        style: TextStyle(
                          fontSize: 20,
                          color: Color(0xFFBEADFA),
                        ),
                      ),
                      Container(
                        alignment: Alignment.centerRight,
                        margin: const EdgeInsets.only(left: 27),
                        child: const Icon(
                          Icons.link,
                          color: Color(0xFFBEADFA),
                          size: 30,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
