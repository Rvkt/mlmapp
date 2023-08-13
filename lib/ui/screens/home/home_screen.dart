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
    Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        CircleAvatar(
          radius: 50,
          backgroundColor: Colors.grey.shade400,
          child: const CircleAvatar(
            backgroundImage: AssetImage('assets/images/George_Jones.jpg'),
            radius: 45,
          ),
        ),
        const Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              'Username',
              style:
                  TextStyle(fontSize: 30.0, color: Colors.black87, fontFamily: 'Roboto', fontWeight: FontWeight.bold),
            ),
            Text(
              'Assistant Manager',
              style:
                  TextStyle(fontSize: 20.0, color: Colors.black87, fontFamily: 'Roboto', fontWeight: FontWeight.w400),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20.0), //or 15.0
              child: Container(
                height: 100.0,
                width: 100.0,
                color: Colors.blue.shade100,
                child: const Icon(
                  Icons.book,
                  color: Colors.white,
                  size: 50.0,
                ),
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(20.0), //or 15.0
              child: Container(
                height: 100.0,
                width: 100.0,
                color: Colors.blue.shade100,
                child: const Icon(
                  Icons.card_membership,
                  color: Colors.white,
                  size: 50.0,
                ),
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(20.0), //or 15.0
              child: Container(
                height: 100.0,
                width: 100.0,
                color: Colors.blue.shade100,
                child: const Icon(
                  Icons.share,
                  color: Colors.white,
                  size: 50.0,
                ),
              ),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Card(
              margin: const EdgeInsets.fromLTRB(30.0, 0, 30.0, 15),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 5.0,
                  horizontal: 5.0,
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.account_tree,
                    size: 30.0,
                    color: Colors.grey.shade900,
                  ),
                  title: Text(
                    'Team Tree View',
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
            Card(
              margin: const EdgeInsets.fromLTRB(30.0, 0, 30.0, 15),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 5.0,
                  horizontal: 5.0,
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.account_tree,
                    size: 30.0,
                    color: Colors.grey.shade900,
                  ),
                  title: Text(
                    'Level Status Graph',
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
            Card(
              margin: const EdgeInsets.fromLTRB(30.0, 0, 30.0, 15),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 5.0,
                  horizontal: 5.0,
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.account_tree,
                    size: 30.0,
                    color: Colors.grey.shade900,
                  ),
                  title: Text(
                    'Level Status with BV',
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
            Card(
              margin: const EdgeInsets.fromLTRB(30.0, 0, 30.0, 0),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 5.0,
                  horizontal: 5.0,
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.account_tree,
                    size: 30.0,
                    color: Colors.grey.shade900,
                  ),
                  title: Text(
                    'TSP Achiever',
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
          ],
        ),
      ],
    )),
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

class OpenPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint1 = Paint()
      ..color = const Color(0xffaa44aa)
      ..style = PaintingStyle.fill;
    canvas.drawRect(const Offset(0, 0) & const Size(400, 150), paint1);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
