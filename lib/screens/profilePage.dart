import 'package:flutter/material.dart';
import 'widgets/ProfileBox.dart';
import 'widgets/ProfileInfo.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  TextEditingController emailController =
      TextEditingController(text: 'arwalkhathlan@iau.edu.sa');
  TextEditingController phoneNumberController =
      TextEditingController(text: '123-456-7890');
  TextEditingController websiteController =
      TextEditingController(text: 'https://www.example.com');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFD0BFFF),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            const ProfileBox(),
            ProfileInfo(
              emailController: emailController,
              phoneNumberController: phoneNumberController,
              websiteController: websiteController,
            ),

            //edit your info
            Container(
              width: 150,
              margin: const EdgeInsets.only(top: 20),
              child: FloatingActionButton(
                onPressed: () {
                  _showEditDialog(context);
                },
                backgroundColor: const Color(0xFFD0BFFF),
                child: const Text('Edit Profile'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showEditDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Edit Profile'),
          content: Column(
            children: [
              _buildEditField('Email', emailController),
              _buildEditField('Phone Number', phoneNumberController),
              _buildEditField('Website', websiteController),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Save'),
            ),
          ],
        );
      },
    );
  }

  Widget _buildEditField(String title, TextEditingController textController) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextField(
          controller: textController,
          decoration: InputDecoration(
            labelText: 'Edit your $title',
          ),
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
