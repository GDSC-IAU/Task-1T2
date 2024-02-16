import 'package:flutter/material.dart';
import 'package:profile_page/widgets/card_row.dart';

class my_card extends StatelessWidget {
  const my_card({super.key});

  @override
  Widget build(BuildContext context){
    return SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width:150,
                  height:150,
                  
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(60),
                    image: const DecorationImage(
                      image: AssetImage("assets/images/cat1.jpg"),
                        
                    ),
                    ),
                ),
              ],
            ),
            const Column(
               children: [
               CardRow(
              text: "Zahra Al Eid",
              icon:  Icon(Icons.person),
              color: Color.fromARGB(255, 235, 206, 164),
            ),
             SizedBox(height: 10,),
             CardRow(
              text: "email",
               icon: Icon(Icons.email),
                color: Color.fromARGB(255, 241, 119, 160),
              ),
              SizedBox(height: 10,),
              CardRow(text: "meow meow",
               icon: Icon(Icons.phone),
                color: Color.fromARGB(255, 196, 231, 247),
                ),
            
              ],)
              
          ],
        ),
      ),
    );
  }
}
