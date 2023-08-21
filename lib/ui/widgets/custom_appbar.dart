import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  final Color iconColor;
  final String title;
  final List<Widget> actionsRow;

  const CustomAppbar({
    Key? key,
    required this.iconColor,
    this.title = "Appbar Title",
    required this.actionsRow,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(color: iconColor),
      centerTitle: true,
      title: Text(title),
      actions: actionsRow,
    );
  }
}
