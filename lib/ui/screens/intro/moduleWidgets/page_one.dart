import 'package:flutter/material.dart';

class PageOne extends StatelessWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: const Center(
        child: Text(
          'App Name',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 75,
            fontFamily: 'Pacifico',
          ),
        ),
      ),
    );
  }
}
