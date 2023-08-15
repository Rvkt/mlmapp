import 'package:flutter/material.dart';
import 'package:mlmapp/ui/widgets/drawer_widget.dart';

class LevelStatusWithBVScreen extends StatelessWidget {
  const LevelStatusWithBVScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: const AppDrawer(),
      body: Container(
        alignment: Alignment.center,
        child: const Text("LevelStatusWithBVScreen"),
      ),
    );
  }
}
