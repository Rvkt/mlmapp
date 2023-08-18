import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(50.0),
          child: Image.asset(
            'assets/images/George_Jones.jpg',
            width: 100.0,
            height: 100.0,
          ),
        ),
        const Text(
          'Username',
          style:
          TextStyle(fontSize: 15.0, color: Colors.black87, fontFamily: 'Roboto', fontWeight: FontWeight.bold),
        ),
        const Text(
          'Assistant Manager',
          style:
          TextStyle(fontSize: 15.0, color: Colors.black87, fontFamily: 'Roboto', fontWeight: FontWeight.w400),
        ),
      ],
    );
  }
}
