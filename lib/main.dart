// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:like_button/like_button.dart';

void main() {
  runApp(ProfileApp());
}

class ProfileApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile',
      debugShowCheckedModeBanner: false,
      home: ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      //App Bar-------------
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[900],
        title: Text(
          'Profile',
          style: TextStyle(
              fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white70),
        ),
        //--------------------
      ),
      body: ListView(
        children: <Widget>[
          buildTop(context),
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                child: buildContactInfo(context),
                height: 565,
                width: screenSize.width * .9,
                decoration: BoxDecoration(
                  color: Colors.blueGrey[700],
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25)),
                ),
              )),
        ],
      ),
    );
  }

//Build Top ------------------------------------------------------
  Widget buildTop(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(width: screenSize.width, child: CoverImage()),
        Container(
          padding: EdgeInsets.all(25),
          child: Positioned(
            top: 40,
            child: ProfileImage(),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              padding: EdgeInsets.only(
                top: 60,
                right: 20,
              ),
              child: Positioned(
                top: 40,
                child: SaveProfile(),
              ),
            ),
          ],
        ),
      ],
    );
  }

// Cover Image
  Widget CoverImage() => Container(
        color: Colors.grey,
        child: Image.network(
          'https://media.evo.co.uk/image/private/s--dvMCsHMJ--/v1556259376/evo/images/dir_594/car_photo_297075.jpg',
          height: 80,
          fit: BoxFit.cover,
        ),
      );
// Profile Image
  Widget ProfileImage() => CircleAvatar(
        radius: 50,
        backgroundColor: Colors.grey,
        backgroundImage: NetworkImage(
          'https://media.evo.co.uk/image/private/s--dvMCsHMJ--/v1556259376/evo/images/dir_594/car_photo_297075.jpg',
        ),
      );
//save button
  Widget SaveProfile() => LikeButton(
        size: 36,
        likeCount: 910,
        countPostion: CountPostion.bottom,
        likeBuilder: ((isTapped) {
          return Icon(
            Icons.bookmark,
            size: 36,
            color: isTapped ? Colors.redAccent : Colors.grey,
          );
        }),
      );

//------------------------------------------------------------------------------

//content ----------------------------------------------------------------------
//all info
  Widget buildContactInfo(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Habib Al-Shaikh',
            style: TextStyle(
                fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        socialMedia(),
        Center(
          child: buildContactSection(
            context,
            'About Me:',
            '     first time with flutter\n//yellowbird in the greenhell', //here I don't know how to make it in the Center if I "\n" inside the text
          ),
        ),
        Center(
          child: buildContactSection(
            context,
            'Email:',
            'ihabibshaikh@gmail.com',
          ),
        ),
        Center(
          child: buildContactSection(
            context,
            'Phone Number:',
            '+996534818816',
          ),
        ),
      ],
    );
  }

//displaying the info
  Widget buildContactSection(
      BuildContext context, String title, String content) {
    Size screenSize = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(
            top: 10,
            left: 25,
            right: 25,
            bottom: 10,
          ),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Center(
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Center(
          child: Stack(
            children: [
              Center(
                child: Container(
                  height: title == 'About Me:' ? 50 : 30,
                  width: screenSize.width * .85,
                  decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    borderRadius:
                        BorderRadius.circular(title == 'About Me:' ? 15 : 50),
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(3),
                  child: Text(
                    content,
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white70),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

//Social Media icon button (it should go to that page link but i dont know how to do it i try to use "url_launcher" but it did'nt wrok :( )-
  Widget socialMedia() {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            iconSize: 50,
            icon: const Icon(
              FontAwesomeIcons.instagram,
              color: Colors.white70,
            ),
            onPressed: () {},
          ),
          IconButton(
            iconSize: 50,
            icon: const Icon(
              FontAwesomeIcons.xTwitter,
              color: Colors.white70,
            ),
            onPressed: () {},
          ),
          IconButton(
            iconSize: 50,
            icon: const Icon(
              FontAwesomeIcons.github,
              color: Colors.white70,
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
  //----------------------------------------------------------------------------
}
