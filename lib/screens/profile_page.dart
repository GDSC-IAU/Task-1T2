import 'package:flutter/material.dart';
import 'package:profile_page/widgets/appBar.dart';
import 'package:profile_page/widgets/followers.dart';
import '../widgets/customTextField.dart';
import '../widgets/dropDownMenu.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(246, 244, 244, 1),
      appBar: appBar(context),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  SizedBox(height: 40),
                  const Stack(
                    children: [
                      CircleAvatar(
                        radius: 55,
                        backgroundImage: AssetImage('assets/profile pic.png'),
                      ),
                    ],
                  ),
                  followers(),
                ],
              ),
            ],
          ),
          const CustomTextField(
            labelText: 'Name',
            hintText: 'Enter your name',
          ),
          const CustomTextField(
            labelText: 'Email',
            hintText: 'Enter your Email address ',
          ),
          const CustomTextField(
            labelText: 'Phone',
            hintText: 'Enter your Phone number',
          ),
          Container(
              padding: EdgeInsets.all(10),
              width: 350,
              child: Column(
                children: [
                  const Padding(
                    padding:
                        EdgeInsets.only(left: 10, right: 20, top: 5, bottom: 5),
                    child: Row(
                      children: [
                        Text("Country"),
                      ],
                    ),
                  ),
                  dropDownMenu(),
                ],
              )),
          Container(
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 103, 179, 255)),
                onPressed: () {},
                child: const Text(
                  'SAVE PROFILE',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ))
        ],
      ),
    );
  }
}
