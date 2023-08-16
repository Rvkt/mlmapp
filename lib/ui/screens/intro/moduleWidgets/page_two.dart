import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      // child: SvgPicture.asset('assets/images/.svg'),
      child: Image.asset('assets/images/1_1.png'),
    );
  }
}
