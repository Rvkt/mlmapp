import 'package:flutter/material.dart';

class BankActionButton extends StatelessWidget {
  final IconData icon;
  final String title;
  final Function()? onTap;

  const BankActionButton({
    Key? key,
    required this.icon,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Colors.blue.shade100,
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Column(
          children: [
            Icon(
              icon,
              color: Colors.white,
              // color: Colors.blue.shade100,
              size: 40.0,
            ),
            const SizedBox(height: 8.0),
            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                letterSpacing: 1,
                color: Colors.grey.shade900,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
