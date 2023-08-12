import 'package:flutter/material.dart';
import 'package:mlmapp/ui/widgets/drawer_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // index field for bottom navigation
  int index = 0;

  // property for pages
  final screens = [
    const Center(
      child: Text(
        'Home',
        style: TextStyle(
          fontSize: 72,
        ),
      ),
    ),
    const Center(
      child: Text(
        'Profile',
        style: TextStyle(
          fontSize: 72,
        ),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Screen"),
      ),
      drawer: const AppDrawer(),
      body: screens[index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (index) => setState(() => this.index = index),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
