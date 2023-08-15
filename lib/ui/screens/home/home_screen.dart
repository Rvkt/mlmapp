import 'package:flutter/material.dart';
import 'package:mlmapp/ui/screens/home/bank_action_btn.dart';
import 'package:mlmapp/ui/screens/home/info_list.dart';
import 'package:mlmapp/ui/screens/home/profile_card.dart';
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
    Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        const SizedBox(height: 16.0),
        const ProfileCard(),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Expanded(
                child: BankActionButton(
                  icon: Icons.book,
                  title: "Passbook",
                  onTap: () {},
                ),
              ),
              const SizedBox(width: 16.0),
              Expanded(
                child: BankActionButton(
                  icon: Icons.card_membership,
                  title: "Withdraw",
                  onTap: () {},
                ),
              ),
              const SizedBox(width: 16.0),
              Expanded(
                child: BankActionButton(
                  icon: Icons.share,
                  title: "Refer",
                  onTap: () {},
                ),
              ),
            ],
          ),
        ),
        const Expanded(
          child: InfoList(),
        ),
      ],
    ),
    const Center(
      child: Text(
        'Profile',
        style: TextStyle(
          fontSize: 72,
        ),
      ),
    ),
    const Center(
      child: Text(
        'Wallet',
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
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_wallet),
            label: "Wallet",
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
