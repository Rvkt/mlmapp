import 'package:flutter/material.dart';

class InfoListItem extends StatelessWidget {
  final String imageUrl;

  // final IconData icon;
  final String title;
  final Function()? onTap;

  const InfoListItem({
    Key? key,
    // required this.icon,
    required this.title,
    required this.onTap,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            leading: Image.asset(
              imageUrl,
              width: 40,
            ),
            title: Text(
              title,
              style: TextStyle(
                color: Colors.grey.shade900,
                fontFamily: 'Roboto',
                fontSize: 20.0,
                letterSpacing: 2.5,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
