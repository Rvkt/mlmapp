import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class BankActionButton extends StatelessWidget {
  final String imageUrl;
  final String title;
  final Function()? onTap;

  const BankActionButton({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onTap,
        child: Column(
          children: [
            Container(
              // padding: const EdgeInsets.all(5),
              margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50.0),
                  boxShadow: [BoxShadow(blurRadius: 2, spreadRadius: 1, color: Colors.grey.shade400)]),
              child: Image.asset(
                imageUrl,
              ),
            ),
            Text(
              title,
              style: const TextStyle(
                fontSize: 15.0,
                color: Colors.black87,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.bold,
                letterSpacing: 1.25,
              ),
            ),
          ],
        )
        // child: Card(
        //   child: Container(
        //     padding: const EdgeInsets.all(8),
        //     child: Column(
        //       children: <Widget>[
        //         Image.asset(imageUrl),
        //         const SizedBox(
        //           height: 16.0,
        //         ),
        //         Text(
        //           title,
        //           style: TextStyle(
        //             fontSize: 15,
        //             fontWeight: FontWeight.bold,
        //             letterSpacing: 1.5,
        //             color: Colors.grey.shade900,
        //           ),
        //         ),
        //       ],
        //     ),
        //   ),
        // ),
        );
  }
}
