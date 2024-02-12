import 'package:flutter/material.dart';

class profile_image extends StatelessWidget {
  const profile_image({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Stack(
            children: [
              

              Center(
                child: Container(
                  height: 200,
                  width: 350,
                  margin: const EdgeInsets.only(top: 70),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
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
              
              const Center(
                child: CircleAvatar(
                  radius: 70,
                  backgroundImage: AssetImage('assets/images/account.png'),
                ),
              ),




            ],
          ),
        ),
      ],
    );
  }
}
