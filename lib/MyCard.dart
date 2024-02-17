import 'package:flutter/material.dart';
import 'package:profile_page/Card_Row.dart';

class MyCard extends StatelessWidget {
  const MyCard({Key? key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                      image: NetworkImage(
                          "https://cdn-icons-png.freepik.com/512/3270/3270999.png"),
                    ),
                  ),
                ),
              ],
            ),
            const Column(
              children: [
                CardRow(
                  text: "Fatimah Almousa",
                  icon: Icon(Icons.person),
                  color: Colors.grey,
                ),
                SizedBox(height: 10),
                CardRow(
                  text: "fatimah.almousa1424@gmail.com",
                  icon: Icon(Icons.email),
                  color: Colors.grey,
                ),
                SizedBox(height: 10),
                CardRow(
                  text: "+966 56 276 8762",
                  icon: Icon(Icons.phone_sharp),
                  color: Colors.grey,
                ),
                SizedBox(height: 10),
                CardRow(
                  text: "Dammam",
                  icon: Icon(Icons.place),
                  color: Colors.grey,
                ),
                SizedBox(height: 30),
                CardRow(
                  text: "SAVE PROFILE",
                  icon: Icon(Icons.save),
                  color: Color.fromARGB(255, 9, 113, 161),
                  fontSize: 14.0,
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
